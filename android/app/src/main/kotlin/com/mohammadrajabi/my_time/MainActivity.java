package com.mohammadrajabi.my_time;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.widget.Chronometer;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityManagerCompat;
import androidx.lifecycle.Observer;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;

public class MainActivity extends FlutterActivity {
    private MethodChannel timerMethodChannel;
    private StopWatchService stopWatchService;
    private boolean isBound = false;
    private Intent intent;


    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ElapsedTimeLiveData.getInstance().getElapsedTimeLiveData().observe(MainActivity.this, observer);

    }

    @Override
    protected void onStart() {
        super.onStart();
        intent = new Intent(MainActivity.this, StopWatchService.class);
        bindService(intent, serviceConnection, BIND_AUTO_CREATE);
        ActivityManager activityManager = (ActivityManager) getSystemService(ACTIVITY_SERVICE);
        for (ActivityManager.RunningServiceInfo serviceInfo : activityManager.getRunningServices(Integer.MAX_VALUE)) {
            if (serviceInfo.service.getClassName().equals(StopWatchService.class.getName())) {
                stopService(new Intent(getApplicationContext(), StopWatchService.class));
            }
        }
    }

    @Override
    protected void onStop() {
        intent.putExtra(Constants.IS_RUNNING_EXTRA_KEY, stopWatchService.isRunning);
        unbindService(serviceConnection);
        startService(intent);
        super.onStop();

    }

    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);

        BinaryMessenger binaryMessenger = flutterEngine.getDartExecutor().getBinaryMessenger();
        timerMethodChannel = new MethodChannel(binaryMessenger, Constants.TIMER_METHOD_CHANNEL);
        timerMethodChannel.setMethodCallHandler((call, result) -> {

            switch (call.method) {
                case Constants.METHOD_CHANNEL_ACTION_PLAY:

                    if (isBound) {
                        stopWatchService.playTimer();
                    }

                    break;
                case Constants.METHOD_CHANNEL_ACTION_PAUSE:

                    if (isBound) {
                        stopWatchService.pauseTimer();
                    }

                    break;
                case Constants.METHOD_CHANNEL_ACTION_RESET:

                    if (isBound) {
                        stopWatchService.resetTimer();
                    }

                    break;
            }

            result.success(true);
        });

    }

    private ServiceConnection serviceConnection = new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            StopWatchService.StopWatchBinder stopWatchBinder = (StopWatchService.StopWatchBinder) iBinder;
            stopWatchService = stopWatchBinder.stopWatchService();
            isBound = true;
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            stopWatchService = null;
            isBound = false;
        }
    };

    final Observer<Integer> observer = new Observer<Integer>() {
        @Override
        public void onChanged(Integer elapsedTime) {
            timerMethodChannel.invokeMethod(Constants.TICK, elapsedTime);
        }
    };

}
.class Lcom/onesignal/NotificationOpenedProcessor;
.super Ljava/lang/Object;
.source "NotificationOpenedProcessor.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addChildNotifications(Lorg/json/JSONArray;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 15
    .param p0, "dataArray"    # Lorg/json/JSONArray;
    .param p1, "summaryGroup"    # Ljava/lang/String;
    .param p2, "writableDb"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x1

    .line 120
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "full_data"

    aput-object v0, v2, v1

    .line 121
    .local v2, "retColumn":[Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 123
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v1, "notification"

    const-string v3, "group_id = ? AND dismissed = 0 AND opened = 0 AND is_summary = 0"

    move-object v0, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 133
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v11, :cond_39

    .line 134
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 137
    :cond_21
    :try_start_21
    const-string v0, "full_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 138
    .local v9, "jsonStr":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_33} :catch_3d

    .line 142
    .end local v9    # "jsonStr":Ljava/lang/String;
    :goto_33
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_21

    .line 145
    :cond_39
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 146
    return-void

    .line 139
    :catch_3d
    move-exception v10

    .line 140
    .local v10, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse JSON of sub notification in group: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    goto :goto_33
.end method

.method private static handleDismissFromActionButtonPress(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 60
    const-string v0, "action_button"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 61
    invoke-static {p0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    const-string v1, "notificationId"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 64
    :cond_20
    return-void
.end method

.method private static isOneSignalIntent(Landroid/content/Intent;)Z
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    const-string v0, "onesignal_data"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "summary"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "notificationId"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static markNotificationsConsumed(Landroid/content/Context;Landroid/content/Intent;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "writableDb"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    .line 149
    const-string v3, "summary"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "group":Ljava/lang/String;
    const/4 v1, 0x0

    .line 153
    .local v1, "whereArgs":[Ljava/lang/String;
    if-eqz v0, :cond_1e

    .line 154
    const-string v2, "group_id = ?"

    .line 155
    .local v2, "whereStr":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    .end local v1    # "whereArgs":[Ljava/lang/String;
    aput-object v0, v1, v5

    .line 160
    .restart local v1    # "whereArgs":[Ljava/lang/String;
    :goto_11
    const-string v3, "notification"

    invoke-static {p1}, Lcom/onesignal/NotificationOpenedProcessor;->newContentValuesWithConsumed(Landroid/content/Intent;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {p2, v3, v4, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 161
    invoke-static {p2, p0}, Lcom/onesignal/BadgeCountUpdater;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 162
    return-void

    .line 158
    .end local v2    # "whereStr":Ljava/lang/String;
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android_notification_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "notificationId"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "whereStr":Ljava/lang/String;
    goto :goto_11
.end method

.method private static newContentValuesWithConsumed(Landroid/content/Intent;)Landroid/content/ContentValues;
    .registers 6
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 165
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 167
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "dismissed"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 169
    .local v0, "dismissed":Z
    if-eqz v0, :cond_19

    .line 170
    const-string v2, "dismissed"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    :goto_18
    return-object v1

    .line 172
    :cond_19
    const-string v2, "opened"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_18
.end method

.method static processFromContext(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-static {p1}, Lcom/onesignal/NotificationOpenedProcessor;->isOneSignalIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 52
    :goto_6
    return-void

    .line 49
    :cond_7
    invoke-static {p0, p1}, Lcom/onesignal/NotificationOpenedProcessor;->handleDismissFromActionButtonPress(Landroid/content/Context;Landroid/content/Intent;)V

    .line 51
    invoke-static {p0, p1}, Lcom/onesignal/NotificationOpenedProcessor;->processIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_6
.end method

.method static processIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    .line 67
    const-string v9, "summary"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "summaryGroup":Ljava/lang/String;
    const-string v9, "dismissed"

    invoke-virtual {p1, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 71
    .local v2, "dismissed":Z
    const/4 v0, 0x0

    .line 72
    .local v0, "dataArray":Lorg/json/JSONArray;
    if-nez v2, :cond_3f

    .line 74
    :try_start_10
    new-instance v5, Lorg/json/JSONObject;

    const-string v9, "onesignal_data"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    .local v5, "jsonData":Lorg/json/JSONObject;
    const-string v9, "notificationId"

    const-string v10, "notificationId"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    const-string v9, "onesignal_data"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    new-instance v9, Lorg/json/JSONObject;

    const-string v10, "onesignal_data"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/onesignal/NotificationBundleProcessor;->newJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_3e} :catch_76

    move-result-object v0

    .line 83
    .end local v5    # "jsonData":Lorg/json/JSONObject;
    :cond_3f
    :goto_3f
    invoke-static {p0}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v1

    .line 84
    .local v1, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/4 v8, 0x0

    .line 87
    .local v8, "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_44
    invoke-virtual {v1}, Lcom/onesignal/OneSignalDbHelper;->getWritableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 88
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 91
    if-nez v2, :cond_52

    if-eqz v6, :cond_52

    .line 92
    invoke-static {v0, v6, v8}, Lcom/onesignal/NotificationOpenedProcessor;->addChildNotifications(Lorg/json/JSONArray;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 94
    :cond_52
    invoke-static {p0, p1, v8}, Lcom/onesignal/NotificationOpenedProcessor;->markNotificationsConsumed(Landroid/content/Context;Landroid/content/Intent;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 97
    if-nez v6, :cond_62

    .line 98
    const-string v9, "grp"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "group":Ljava/lang/String;
    if-eqz v4, :cond_62

    .line 100
    invoke-static {p0, v8, v4, v2}, Lcom/onesignal/NotificationSummaryManager;->updateSummaryNotificationAfterChildRemoved(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)V

    .line 102
    .end local v4    # "group":Ljava/lang/String;
    :cond_62
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_65} :catch_84
    .catchall {:try_start_44 .. :try_end_65} :catchall_9b

    .line 106
    if-eqz v8, :cond_6a

    .line 108
    :try_start_67
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_6a} :catch_7b

    .line 115
    :cond_6a
    :goto_6a
    if-nez v2, :cond_75

    .line 116
    const-string v9, "from_alert"

    invoke-virtual {p1, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {p0, v0, v9}, Lcom/onesignal/OneSignal;->handleNotificationOpen(Landroid/content/Context;Lorg/json/JSONArray;Z)V

    .line 117
    :cond_75
    return-void

    .line 78
    .end local v1    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .end local v8    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :catch_76
    move-exception v7

    .line 79
    .local v7, "t":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3f

    .line 109
    .end local v7    # "t":Ljava/lang/Throwable;
    .restart local v1    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .restart local v8    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :catch_7b
    move-exception v7

    .line 110
    .restart local v7    # "t":Ljava/lang/Throwable;
    sget-object v9, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v10, "Error closing transaction! "

    invoke-static {v9, v10, v7}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6a

    .line 103
    .end local v7    # "t":Ljava/lang/Throwable;
    :catch_84
    move-exception v3

    .line 104
    .local v3, "e":Ljava/lang/Exception;
    :try_start_85
    sget-object v9, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v10, "Error processing notification open or dismiss record! "

    invoke-static {v9, v10, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8c
    .catchall {:try_start_85 .. :try_end_8c} :catchall_9b

    .line 106
    if-eqz v8, :cond_6a

    .line 108
    :try_start_8e
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_91} :catch_92

    goto :goto_6a

    .line 109
    :catch_92
    move-exception v7

    .line 110
    .restart local v7    # "t":Ljava/lang/Throwable;
    sget-object v9, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v10, "Error closing transaction! "

    invoke-static {v9, v10, v7}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6a

    .line 106
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "t":Ljava/lang/Throwable;
    :catchall_9b
    move-exception v9

    if-eqz v8, :cond_a1

    .line 108
    :try_start_9e
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_a1} :catch_a2

    .line 111
    :cond_a1
    :goto_a1
    throw v9

    .line 109
    :catch_a2
    move-exception v7

    .line 110
    .restart local v7    # "t":Ljava/lang/Throwable;
    sget-object v10, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v11, "Error closing transaction! "

    invoke-static {v10, v11, v7}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a1
.end method

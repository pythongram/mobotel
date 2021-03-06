.class Lcom/onesignal/NotificationRestorer;
.super Ljava/lang/Object;
.source "NotificationRestorer.java"


# static fields
.field static final COLUMNS_FOR_RESTORE:[Ljava/lang/String;

.field public static restored:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android_notification_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "full_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "created_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/onesignal/NotificationRestorer;->COLUMNS_FOR_RESTORE:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asyncRestore(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/NotificationRestorer$1;

    invoke-direct {v1, p0}, Lcom/onesignal/NotificationRestorer$1;-><init>(Landroid/content/Context;)V

    const-string v2, "OS_RESTORE_NOTIFS"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 55
    return-void
.end method

.method public static restore(Landroid/content/Context;)V
    .registers 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    sget-boolean v1, Lcom/onesignal/NotificationRestorer;->restored:Z

    if-eqz v1, :cond_5

    .line 109
    :cond_4
    :goto_4
    return-void

    .line 60
    :cond_5
    const/4 v1, 0x1

    sput-boolean v1, Lcom/onesignal/NotificationRestorer;->restored:Z

    .line 62
    invoke-static {p0}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v9

    .line 63
    .local v9, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/4 v11, 0x0

    .line 66
    .local v11, "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_d
    invoke-virtual {v9}, Lcom/onesignal/OneSignalDbHelper;->getWritableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 68
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 70
    invoke-static {v11}, Lcom/onesignal/NotificationBundleProcessor;->deleteOldNotifications(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 71
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1a} :catch_92
    .catchall {:try_start_d .. :try_end_1a} :catchall_aa

    .line 75
    if-eqz v11, :cond_1f

    .line 77
    :try_start_1c
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1f} :catch_89

    .line 84
    :cond_1f
    :goto_1f
    const/4 v8, 0x0

    .line 86
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_20
    invoke-virtual {v9}, Lcom/onesignal/OneSignalDbHelper;->getReadableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 87
    .local v0, "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "notification"

    sget-object v2, Lcom/onesignal/NotificationRestorer;->COLUMNS_FOR_RESTORE:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "created_time > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/32 v6, 0x93a80

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dismissed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = 0 AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "opened"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = 0 AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is_summary"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id ASC"

    .line 87
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 101
    invoke-static {p0, v8}, Lcom/onesignal/NotificationRestorer;->showNotifications(Landroid/content/Context;Landroid/database/Cursor;)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_7c} :catch_ba
    .catchall {:try_start_20 .. :try_end_7c} :catchall_cf

    .line 106
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 107
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 78
    .end local v0    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_89
    move-exception v10

    .line 79
    .local v10, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Error closing transaction! "

    invoke-static {v1, v2, v10}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f

    .line 72
    .end local v10    # "t":Ljava/lang/Throwable;
    :catch_92
    move-exception v10

    .line 73
    .restart local v10    # "t":Ljava/lang/Throwable;
    :try_start_93
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Error deleting old notification records! "

    invoke-static {v1, v2, v10}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9a
    .catchall {:try_start_93 .. :try_end_9a} :catchall_aa

    .line 75
    if-eqz v11, :cond_1f

    .line 77
    :try_start_9c
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_9f} :catch_a0

    goto :goto_1f

    .line 78
    :catch_a0
    move-exception v10

    .line 79
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Error closing transaction! "

    invoke-static {v1, v2, v10}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 75
    .end local v10    # "t":Ljava/lang/Throwable;
    :catchall_aa
    move-exception v1

    if-eqz v11, :cond_b0

    .line 77
    :try_start_ad
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_b0} :catch_b1

    .line 80
    :cond_b0
    :goto_b0
    throw v1

    .line 78
    :catch_b1
    move-exception v10

    .line 79
    .restart local v10    # "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Error closing transaction! "

    invoke-static {v2, v3, v10}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b0

    .line 103
    .end local v10    # "t":Ljava/lang/Throwable;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_ba
    move-exception v10

    .line 104
    .restart local v10    # "t":Ljava/lang/Throwable;
    :try_start_bb
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Error restoring notification records! "

    invoke-static {v1, v2, v10}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c2
    .catchall {:try_start_bb .. :try_end_c2} :catchall_cf

    .line 106
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 107
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 106
    .end local v10    # "t":Ljava/lang/Throwable;
    :catchall_cf
    move-exception v1

    if-eqz v8, :cond_db

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_db

    .line 107
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_db
    throw v1
.end method

.method static showNotifications(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x1

    .line 112
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_53

    .line 113
    invoke-static {p0}, Lcom/onesignal/NotificationExtenderService;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_54

    move v4, v5

    .line 116
    .local v4, "useExtender":Z
    :cond_e
    :goto_e
    const-string v6, "android_notification_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 117
    .local v1, "existingId":I
    const-string v6, "full_data"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "fullData":Ljava/lang/String;
    const-string v6, "created_time"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 122
    .local v0, "datetime":Ljava/lang/Long;
    if-eqz v4, :cond_56

    .line 123
    invoke-static {p0}, Lcom/onesignal/NotificationExtenderService;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    .line 127
    .local v3, "serviceIntent":Landroid/content/Intent;
    :goto_36
    const-string v6, "json_payload"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v6, "android_notif_id"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    const-string v6, "restoring"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    const-string v6, "timestamp"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 132
    invoke-static {p0, v3}, Lcom/onesignal/NotificationRestorer;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 133
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_e

    .line 135
    .end local v0    # "datetime":Ljava/lang/Long;
    .end local v1    # "existingId":I
    .end local v2    # "fullData":Ljava/lang/String;
    .end local v3    # "serviceIntent":Landroid/content/Intent;
    .end local v4    # "useExtender":Z
    :cond_53
    return-void

    .line 113
    :cond_54
    const/4 v4, 0x0

    goto :goto_e

    .line 125
    .restart local v0    # "datetime":Ljava/lang/Long;
    .restart local v1    # "existingId":I
    .restart local v2    # "fullData":Ljava/lang/String;
    .restart local v4    # "useExtender":Z
    :cond_56
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    new-instance v7, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/onesignal/GcmIntentService;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .restart local v3    # "serviceIntent":Landroid/content/Intent;
    goto :goto_36
.end method

.method private static startService(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 139
    return-void
.end method

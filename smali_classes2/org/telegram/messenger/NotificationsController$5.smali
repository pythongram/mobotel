.class Lorg/telegram/messenger/NotificationsController$5;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController;->showSingleBackgroundNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationsController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationsController;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 220
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$5;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 25

    .prologue
    .line 224
    :try_start_0
    sget-boolean v20, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez v20, :cond_5

    .line 337
    :goto_4
    return-void

    .line 227
    :cond_5
    sget-object v20, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v21, "Notifications"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 229
    .local v16, "preferences":Landroid/content/SharedPreferences;
    const/4 v15, 0x0

    .line 230
    .local v15, "notifyDisabled":Z
    const/4 v14, 0x0

    .line 231
    .local v14, "needVibrate":I
    const/4 v4, 0x0

    .line 232
    .local v4, "choosenSoundPath":Ljava/lang/String;
    const v10, -0xffff01

    .line 233
    .local v10, "ledColor":I
    const/16 v17, 0x0

    .line 236
    .local v17, "priority":I
    const-string v20, "EnableAll"

    const/16 v21, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-nez v20, :cond_28

    .line 237
    const/4 v15, 0x1

    .line 240
    :cond_28
    sget-object v20, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 241
    .local v6, "defaultPath":Ljava/lang/String;
    if-nez v15, :cond_c3

    .line 242
    const/16 v19, 0x0

    .line 243
    .local v19, "vibrateOverride":I
    const/4 v4, 0x0

    .line 244
    const/16 v18, 0x0

    .line 246
    .local v18, "vibrateOnlyIfSilent":Z
    if-eqz v4, :cond_226

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_226

    .line 247
    const/4 v4, 0x0

    .line 251
    :cond_3e
    :goto_3e
    const-string v20, "vibrate_messages"

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 252
    const-string v20, "priority_group"

    const/16 v21, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 253
    const-string v20, "MessagesLed"

    const v21, -0xffff01

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_68} :catch_220

    move-result v10

    .line 255
    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v14, v0, :cond_72

    .line 256
    const/16 v18, 0x1

    .line 257
    const/4 v14, 0x0

    .line 259
    :cond_72
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v14, v0, :cond_88

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a0

    :cond_88
    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v14, v0, :cond_96

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a0

    :cond_96
    if-eqz v19, :cond_a2

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a2

    .line 260
    :cond_a0
    move/from16 v14, v19

    .line 262
    :cond_a2
    if-eqz v18, :cond_c3

    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v14, v0, :cond_c3

    .line 264
    :try_start_aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$5;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/media/AudioManager;->getRingerMode()I
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_b9} :catch_234

    move-result v12

    .line 265
    .local v12, "mode":I
    if-eqz v12, :cond_c3

    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v12, v0, :cond_c3

    .line 266
    const/4 v14, 0x2

    .line 274
    .end local v12    # "mode":I
    .end local v18    # "vibrateOnlyIfSilent":Z
    .end local v19    # "vibrateOverride":I
    :cond_c3
    :goto_c3
    :try_start_c3
    new-instance v8, Landroid/content/Intent;

    sget-object v20, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v21, Lorg/telegram/ui/LaunchActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    .local v8, "intent":Landroid/content/Intent;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "com.tmessages.openchat"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0x7fffffff

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const v20, 0x8000

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 278
    sget-object v20, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/16 v21, 0x0

    const/high16 v22, 0x40000000    # 2.0f

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 280
    .local v5, "contentIntent":Landroid/app/PendingIntent;
    const-string v20, "AppName"

    const v21, 0x7f070092

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 282
    .local v13, "name":Ljava/lang/String;
    new-instance v20, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v21, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct/range {v20 .. v21}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 283
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v20

    const v21, 0x7f0201fb

    .line 284
    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v20

    const/16 v21, 0x1

    .line 285
    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$5;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v21, v0

    .line 286
    # getter for: Lorg/telegram/messenger/NotificationsController;->total_unread_count:I
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/NotificationsController;->access$400(Lorg/telegram/messenger/NotificationsController;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v20

    .line 287
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v20

    const-string v21, "messages"

    .line 288
    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v20

    const/16 v21, 0x1

    .line 289
    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v20

    const v21, -0xd35a20

    .line 290
    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    .line 292
    .local v11, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v20, "msg"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 294
    const-string v20, "YouHaveNewMessage"

    const v21, 0x7f0705bf

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 295
    .local v9, "lastMessage":Ljava/lang/String;
    invoke-virtual {v11, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 296
    new-instance v20, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct/range {v20 .. v20}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 298
    if-nez v17, :cond_23a

    .line 299
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 306
    :cond_185
    :goto_185
    if-nez v15, :cond_2ab

    .line 307
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1be

    .line 308
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    const/16 v22, 0x64

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0xa

    const/16 v23, 0x20

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "..."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 310
    :cond_1be
    invoke-virtual {v11, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 311
    if-eqz v4, :cond_1de

    const-string v20, "NoSound"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1de

    .line 312
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_25c

    .line 313
    sget-object v20, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    const/16 v21, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 318
    :cond_1de
    :goto_1de
    if-eqz v10, :cond_1eb

    .line 319
    const/16 v20, 0x3e8

    const/16 v21, 0x3e8

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v10, v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 321
    :cond_1eb
    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v14, v0, :cond_1fb

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/MediaController;->isRecordingAudio()Z

    move-result v20

    if-eqz v20, :cond_26b

    .line 322
    :cond_1fb
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v20, v0

    fill-array-data v20, :array_2be

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 333
    :cond_20b
    :goto_20b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$5;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$1400(Lorg/telegram/messenger/NotificationsController;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual {v11}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V
    :try_end_21e
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_21e} :catch_220

    goto/16 :goto_4

    .line 334
    .end local v4    # "choosenSoundPath":Ljava/lang/String;
    .end local v5    # "contentIntent":Landroid/app/PendingIntent;
    .end local v6    # "defaultPath":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "lastMessage":Ljava/lang/String;
    .end local v10    # "ledColor":I
    .end local v11    # "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "needVibrate":I
    .end local v15    # "notifyDisabled":Z
    .end local v16    # "preferences":Landroid/content/SharedPreferences;
    .end local v17    # "priority":I
    :catch_220
    move-exception v7

    .line 335
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 248
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "choosenSoundPath":Ljava/lang/String;
    .restart local v6    # "defaultPath":Ljava/lang/String;
    .restart local v10    # "ledColor":I
    .restart local v14    # "needVibrate":I
    .restart local v15    # "notifyDisabled":Z
    .restart local v16    # "preferences":Landroid/content/SharedPreferences;
    .restart local v17    # "priority":I
    .restart local v18    # "vibrateOnlyIfSilent":Z
    .restart local v19    # "vibrateOverride":I
    :cond_226
    if-nez v4, :cond_3e

    .line 249
    :try_start_228
    const-string v20, "GlobalSoundPath"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3e

    .line 268
    :catch_234
    move-exception v7

    .line 269
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_c3

    .line 300
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v18    # "vibrateOnlyIfSilent":Z
    .end local v19    # "vibrateOverride":I
    .restart local v5    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "lastMessage":Ljava/lang/String;
    .restart local v11    # "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v13    # "name":Ljava/lang/String;
    :cond_23a
    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_24b

    .line 301
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_185

    .line 302
    :cond_24b
    const/16 v20, 0x2

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_185

    .line 303
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_185

    .line 315
    :cond_25c
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    const/16 v21, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_1de

    .line 323
    :cond_26b
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_282

    .line 324
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v20, v0

    fill-array-data v20, :array_2ca

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_20b

    .line 325
    :cond_282
    if-eqz v14, :cond_28a

    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v14, v0, :cond_293

    .line 326
    :cond_28a
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_20b

    .line 327
    :cond_293
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v14, v0, :cond_20b

    .line 328
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v20, v0

    fill-array-data v20, :array_2de

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_20b

    .line 331
    :cond_2ab
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v20, v0

    fill-array-data v20, :array_2ea

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_2bb
    .catch Ljava/lang/Exception; {:try_start_228 .. :try_end_2bb} :catch_220

    goto/16 :goto_20b

    .line 322
    nop

    :array_2be
    .array-data 8
        0x0
        0x0
    .end array-data

    .line 324
    :array_2ca
    .array-data 8
        0x0
        0x64
        0x0
        0x64
    .end array-data

    .line 328
    :array_2de
    .array-data 8
        0x0
        0x3e8
    .end array-data

    .line 331
    :array_2ea
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

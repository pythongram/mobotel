.class Lorg/telegram/messenger/NotificationsController$14;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController;->playInChatSound()V
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
    .line 1451
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$14;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController$14;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->lastSoundPlay:J
    invoke-static {v2}, Lorg/telegram/messenger/NotificationsController;->access$2100(Lorg/telegram/messenger/NotificationsController;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_16

    .line 1487
    :cond_15
    :goto_15
    return-void

    .line 1458
    :cond_16
    :try_start_16
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$14;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->soundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lorg/telegram/messenger/NotificationsController;->access$2200(Lorg/telegram/messenger/NotificationsController;)Landroid/media/SoundPool;

    move-result-object v0

    if-nez v0, :cond_39

    .line 1459
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$14;->this$0:Lorg/telegram/messenger/NotificationsController;

    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    # setter for: Lorg/telegram/messenger/NotificationsController;->soundPool:Landroid/media/SoundPool;
    invoke-static {v0, v1}, Lorg/telegram/messenger/NotificationsController;->access$2202(Lorg/telegram/messenger/NotificationsController;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 1460
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$14;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->soundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lorg/telegram/messenger/NotificationsController;->access$2200(Lorg/telegram/messenger/NotificationsController;)Landroid/media/SoundPool;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/NotificationsController$14$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/NotificationsController$14$1;-><init>(Lorg/telegram/messenger/NotificationsController$14;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 1473
    :cond_39
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$14;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->soundIn:I
    invoke-static {v0}, Lorg/telegram/messenger/NotificationsController;->access$2300(Lorg/telegram/messenger/NotificationsController;)I

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$14;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->soundInLoaded:Z
    invoke-static {v0}, Lorg/telegram/messenger/NotificationsController;->access$2400(Lorg/telegram/messenger/NotificationsController;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 1474
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$14;->this$0:Lorg/telegram/messenger/NotificationsController;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/messenger/NotificationsController;->soundInLoaded:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/NotificationsController;->access$2402(Lorg/telegram/messenger/NotificationsController;Z)Z

    .line 1475
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$14;->this$0:Lorg/telegram/messenger/NotificationsController;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController$14;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->soundPool:Landroid/media/SoundPool;
    invoke-static {v1}, Lorg/telegram/messenger/NotificationsController;->access$2200(Lorg/telegram/messenger/NotificationsController;)Landroid/media/SoundPool;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const v3, 0x7f060002

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    # setter for: Lorg/telegram/messenger/NotificationsController;->soundIn:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/NotificationsController;->access$2302(Lorg/telegram/messenger/NotificationsController;I)I

    .line 1477
    :cond_64
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$14;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->soundIn:I
    invoke-static {v0}, Lorg/telegram/messenger/NotificationsController;->access$2300(Lorg/telegram/messenger/NotificationsController;)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_69} :catch_89

    move-result v0

    if-eqz v0, :cond_15

    .line 1479
    :try_start_6c
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$14;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->soundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lorg/telegram/messenger/NotificationsController;->access$2200(Lorg/telegram/messenger/NotificationsController;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController$14;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->soundIn:I
    invoke-static {v1}, Lorg/telegram/messenger/NotificationsController;->access$2300(Lorg/telegram/messenger/NotificationsController;)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_83} :catch_84

    goto :goto_15

    .line 1480
    :catch_84
    move-exception v7

    .line 1481
    .local v7, "e":Ljava/lang/Exception;
    :try_start_85
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_15

    .line 1484
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_89
    move-exception v7

    .line 1485
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_15
.end method

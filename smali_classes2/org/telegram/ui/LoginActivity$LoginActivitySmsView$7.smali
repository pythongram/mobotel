.class Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;
.super Ljava/util/TimerTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .prologue
    .line 1579
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1582
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;
    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3800(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/util/Timer;

    move-result-object v4

    if-nez v4, :cond_9

    .line 1645
    :goto_8
    return-void

    .line 1585
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v0, v4

    .line 1586
    .local v0, "currentTime":D
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCurrentTime:D
    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3900(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)D

    move-result-wide v4

    sub-double v2, v0, v4

    .line 1587
    .local v2, "diff":D
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4000(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v5

    int-to-double v6, v5

    sub-double/2addr v6, v2

    double-to-int v5, v6

    # setter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I
    invoke-static {v4, v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4002(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;I)I

    .line 1588
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # setter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCurrentTime:D
    invoke-static {v4, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3902(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;D)D

    .line 1589
    new-instance v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_8
.end method

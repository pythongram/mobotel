.class Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;
.super Ljava/util/TimerTask;
.source "ChangePhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->createTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 1183
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1186
    iget-object v4, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;
    invoke-static {v4}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Ljava/util/Timer;

    move-result-object v4

    if-nez v4, :cond_9

    .line 1249
    :goto_8
    return-void

    .line 1189
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v0, v4

    .line 1190
    .local v0, "currentTime":D
    iget-object v4, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->lastCurrentTime:D
    invoke-static {v4}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3200(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)D

    move-result-wide v4

    sub-double v2, v0, v4

    .line 1191
    .local v2, "diff":D
    iget-object v4, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    iget-object v5, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->time:I
    invoke-static {v5}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3300(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v5

    int-to-double v6, v5

    sub-double/2addr v6, v2

    double-to-int v5, v6

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->time:I
    invoke-static {v4, v5}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3302(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;I)I

    .line 1192
    iget-object v4, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->lastCurrentTime:D
    invoke-static {v4, v0, v1}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3202(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;D)D

    .line 1193
    new-instance v4, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;-><init>(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_8
.end method

.class Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$6;
.super Ljava/util/TimerTask;
.source "ChangePhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->createCodeTimer()V
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
    .line 1145
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v0, v4

    .line 1149
    .local v0, "currentTime":D
    iget-object v4, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->lastCodeTime:D
    invoke-static {v4}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2700(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)D

    move-result-wide v4

    sub-double v2, v0, v4

    .line 1150
    .local v2, "diff":D
    iget-object v4, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    iget-object v5, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeTime:I
    invoke-static {v5}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2800(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v5

    int-to-double v6, v5

    sub-double/2addr v6, v2

    double-to-int v5, v6

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeTime:I
    invoke-static {v4, v5}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2802(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;I)I

    .line 1151
    iget-object v4, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->lastCodeTime:D
    invoke-static {v4, v0, v1}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2702(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;D)D

    .line 1152
    new-instance v4, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$6$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$6$1;-><init>(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$6;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1161
    return-void
.end method

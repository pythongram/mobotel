.class Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;
.super Ljava/util/TimerTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createCodeTimer()V
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
    .line 1541
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v0, v4

    .line 1545
    .local v0, "currentTime":D
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCodeTime:D
    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3400(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)D

    move-result-wide v4

    sub-double v2, v0, v4

    .line 1546
    .local v2, "diff":D
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTime:I
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v5

    int-to-double v6, v5

    sub-double/2addr v6, v2

    double-to-int v5, v6

    # setter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTime:I
    invoke-static {v4, v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3502(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;I)I

    .line 1547
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # setter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCodeTime:D
    invoke-static {v4, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3402(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;D)D

    .line 1548
    new-instance v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1557
    return-void
.end method

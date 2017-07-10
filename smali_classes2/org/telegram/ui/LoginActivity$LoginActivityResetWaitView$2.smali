.class Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->setParams(Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    .prologue
    .line 2402
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2405
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->timeRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->access$6400(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq v0, p0, :cond_9

    .line 2410
    :goto_8
    return-void

    .line 2408
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    # invokes: Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->updateTimeText()V
    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->access$6500(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)V

    .line 2409
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->timeRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->access$6400(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_8
.end method

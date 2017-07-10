.class Lorg/telegram/ui/LaunchActivity$21;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->onPasscodePause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 2254
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$21;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2257
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$21;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$1600(Lorg/telegram/ui/LaunchActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-ne v0, p0, :cond_1f

    .line 2258
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2259
    const-string v0, "lock app"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2260
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$21;->this$0:Lorg/telegram/ui/LaunchActivity;

    # invokes: Lorg/telegram/ui/LaunchActivity;->showPasscodeActivity()V
    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$1700(Lorg/telegram/ui/LaunchActivity;)V

    .line 2264
    :goto_19
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$21;->this$0:Lorg/telegram/ui/LaunchActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/LaunchActivity;->access$1602(Lorg/telegram/ui/LaunchActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 2266
    :cond_1f
    return-void

    .line 2262
    :cond_20
    const-string v0, "didn\'t pass lock check"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_19
.end method

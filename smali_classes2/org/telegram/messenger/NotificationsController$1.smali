.class Lorg/telegram/messenger/NotificationsController$1;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController;-><init>()V
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
    .line 125
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$1;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 128
    const-string v1, "delay reached"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController$1;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/messenger/NotificationsController;->access$000(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    .line 130
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController$1;->this$0:Lorg/telegram/messenger/NotificationsController;

    const/4 v2, 0x1

    # invokes: Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V
    invoke-static {v1, v2}, Lorg/telegram/messenger/NotificationsController;->access$100(Lorg/telegram/messenger/NotificationsController;Z)V

    .line 131
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController$1;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/messenger/NotificationsController;->access$000(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 134
    :cond_20
    :try_start_20
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController$1;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lorg/telegram/messenger/NotificationsController;->access$200(Lorg/telegram/messenger/NotificationsController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 135
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController$1;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lorg/telegram/messenger/NotificationsController;->access$200(Lorg/telegram/messenger/NotificationsController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_35} :catch_36

    .line 140
    :cond_35
    :goto_35
    return-void

    .line 137
    :catch_36
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_35
.end method

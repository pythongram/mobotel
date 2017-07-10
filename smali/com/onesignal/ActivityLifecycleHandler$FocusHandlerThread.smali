.class Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;
.super Landroid/os/HandlerThread;
.source "ActivityLifecycleHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/ActivityLifecycleHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FocusHandlerThread"
.end annotation


# instance fields
.field private appFocusRunnable:Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

.field mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 131
    const-string v0, "FocusHandlerThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->mHandler:Landroid/os/Handler;

    .line 132
    invoke-virtual {p0}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->start()V

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->mHandler:Landroid/os/Handler;

    .line 134
    return-void
.end method


# virtual methods
.method getHandlerLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method hasBackgrounded()Z
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->appFocusRunnable:Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->appFocusRunnable:Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    # getter for: Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->backgrounded:Z
    invoke-static {v0}, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->access$100(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method resetBackgroundState()V
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->appFocusRunnable:Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    if-eqz v0, :cond_a

    .line 142
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->appFocusRunnable:Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    const/4 v1, 0x0

    # setter for: Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->backgrounded:Z
    invoke-static {v0, v1}, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->access$102(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;Z)Z

    .line 143
    :cond_a
    return-void
.end method

.method runRunnable(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)V
    .registers 6
    .param p1, "runnable"    # Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->appFocusRunnable:Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->appFocusRunnable:Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    # getter for: Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->backgrounded:Z
    invoke-static {v0}, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->access$100(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->appFocusRunnable:Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    # getter for: Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->completed:Z
    invoke-static {v0}, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->access$200(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 156
    :goto_14
    return-void

    .line 153
    :cond_15
    iput-object p1, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->appFocusRunnable:Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    .line 154
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_14
.end method

.method stopScheduledRunnable()V
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 147
    return-void
.end method

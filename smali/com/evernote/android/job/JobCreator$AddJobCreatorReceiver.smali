.class public abstract Lcom/evernote/android/job/JobCreator$AddJobCreatorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "JobCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/JobCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AddJobCreatorReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract addJobCreator(Landroid/content/Context;Lcom/evernote/android/job/JobManager;)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/evernote/android/job/JobManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    const-string v0, "com.evernote.android.job.ADD_JOB_CREATOR"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 53
    :cond_10
    :goto_10
    return-void

    .line 52
    :cond_11
    invoke-static {p1}, Lcom/evernote/android/job/JobManager;->create(Landroid/content/Context;)Lcom/evernote/android/job/JobManager;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/evernote/android/job/JobCreator$AddJobCreatorReceiver;->addJobCreator(Landroid/content/Context;Lcom/evernote/android/job/JobManager;)V

    goto :goto_10
.end method

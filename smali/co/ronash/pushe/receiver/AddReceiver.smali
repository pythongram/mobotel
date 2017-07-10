.class public final Lco/ronash/pushe/receiver/AddReceiver;
.super Lcom/evernote/android/job/JobCreator$AddJobCreatorReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/evernote/android/job/JobCreator$AddJobCreatorReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected addJobCreator(Landroid/content/Context;Lcom/evernote/android/job/JobManager;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/evernote/android/job/JobManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lco/ronash/pushe/task/scheduler/a/c;

    invoke-direct {v0, p1}, Lco/ronash/pushe/task/scheduler/a/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/evernote/android/job/JobManager;->addJobCreator(Lcom/evernote/android/job/JobCreator;)V

    return-void
.end method

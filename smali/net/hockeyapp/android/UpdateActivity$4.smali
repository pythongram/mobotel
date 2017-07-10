.class Lnet/hockeyapp/android/UpdateActivity$4;
.super Lnet/hockeyapp/android/listeners/DownloadFileListener;
.source "UpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/UpdateActivity;->startDownloadTask(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/UpdateActivity;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/UpdateActivity;)V
    .registers 2
    .param p1, "this$0"    # Lnet/hockeyapp/android/UpdateActivity;

    .prologue
    .line 285
    iput-object p1, p0, Lnet/hockeyapp/android/UpdateActivity$4;->this$0:Lnet/hockeyapp/android/UpdateActivity;

    invoke-direct {p0}, Lnet/hockeyapp/android/listeners/DownloadFileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadFailed(Lnet/hockeyapp/android/tasks/DownloadFileTask;Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "task"    # Lnet/hockeyapp/android/tasks/DownloadFileTask;
    .param p2, "userWantsRetry"    # Ljava/lang/Boolean;

    .prologue
    .line 287
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 288
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity$4;->this$0:Lnet/hockeyapp/android/UpdateActivity;

    invoke-virtual {v0}, Lnet/hockeyapp/android/UpdateActivity;->startDownloadTask()V

    .line 292
    :goto_b
    return-void

    .line 290
    :cond_c
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity$4;->this$0:Lnet/hockeyapp/android/UpdateActivity;

    invoke-virtual {v0}, Lnet/hockeyapp/android/UpdateActivity;->enableUpdateButton()V

    goto :goto_b
.end method

.method public downloadSuccessful(Lnet/hockeyapp/android/tasks/DownloadFileTask;)V
    .registers 3
    .param p1, "task"    # Lnet/hockeyapp/android/tasks/DownloadFileTask;

    .prologue
    .line 295
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity$4;->this$0:Lnet/hockeyapp/android/UpdateActivity;

    invoke-virtual {v0}, Lnet/hockeyapp/android/UpdateActivity;->enableUpdateButton()V

    .line 296
    return-void
.end method

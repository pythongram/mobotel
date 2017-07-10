.class Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$1;
.super Ljava/lang/Object;
.source "CheckUpdateTaskWithUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->showDialog(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;)V
    .registers 2
    .param p1, "this$0"    # Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;

    .prologue
    .line 90
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$1;->this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$1;->this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->cleanUp()V

    .line 93
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$1;->this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;

    iget-object v0, v0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    if-eqz v0, :cond_12

    .line 94
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$1;->this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;

    iget-object v0, v0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    invoke-virtual {v0}, Lnet/hockeyapp/android/UpdateManagerListener;->onCancel()V

    .line 96
    :cond_12
    return-void
.end method

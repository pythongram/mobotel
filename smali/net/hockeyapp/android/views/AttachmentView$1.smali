.class Lnet/hockeyapp/android/views/AttachmentView$1;
.super Landroid/os/AsyncTask;
.source "AttachmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/views/AttachmentView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/net/Uri;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/views/AttachmentView;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/views/AttachmentView;)V
    .registers 2
    .param p1, "this$0"    # Lnet/hockeyapp/android/views/AttachmentView;

    .prologue
    .line 82
    iput-object p1, p0, Lnet/hockeyapp/android/views/AttachmentView$1;->this$0:Lnet/hockeyapp/android/views/AttachmentView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 85
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView$1;->this$0:Lnet/hockeyapp/android/views/AttachmentView;

    # invokes: Lnet/hockeyapp/android/views/AttachmentView;->loadImageThumbnail()Landroid/graphics/Bitmap;
    invoke-static {v0}, Lnet/hockeyapp/android/views/AttachmentView;->access$000(Lnet/hockeyapp/android/views/AttachmentView;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 82
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/views/AttachmentView$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 90
    if-eqz p1, :cond_9

    .line 91
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView$1;->this$0:Lnet/hockeyapp/android/views/AttachmentView;

    # invokes: Lnet/hockeyapp/android/views/AttachmentView;->configureViewForThumbnail(Landroid/graphics/Bitmap;Z)V
    invoke-static {v0, p1, v1}, Lnet/hockeyapp/android/views/AttachmentView;->access$100(Lnet/hockeyapp/android/views/AttachmentView;Landroid/graphics/Bitmap;Z)V

    .line 95
    :goto_8
    return-void

    .line 93
    :cond_9
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView$1;->this$0:Lnet/hockeyapp/android/views/AttachmentView;

    # invokes: Lnet/hockeyapp/android/views/AttachmentView;->configureViewForPlaceholder(Z)V
    invoke-static {v0, v1}, Lnet/hockeyapp/android/views/AttachmentView;->access$200(Lnet/hockeyapp/android/views/AttachmentView;Z)V

    goto :goto_8
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 82
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/views/AttachmentView$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

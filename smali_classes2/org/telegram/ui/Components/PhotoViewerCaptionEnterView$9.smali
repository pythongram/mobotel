.class Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$9;
.super Ljava/lang/Object;
.source "PhotoViewerCaptionEnterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setFieldFocused(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    .prologue
    .line 398
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$9;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 401
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$9;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # getter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$800(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 403
    :try_start_8
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$9;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # getter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$800(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_11} :catch_12

    .line 408
    :cond_11
    :goto_11
    return-void

    .line 404
    :catch_12
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_11
.end method

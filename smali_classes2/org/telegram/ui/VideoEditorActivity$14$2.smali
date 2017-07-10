.class Lorg/telegram/ui/VideoEditorActivity$14$2;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VideoEditorActivity$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/VideoEditorActivity$14;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VideoEditorActivity$14;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/VideoEditorActivity$14;

    .prologue
    .line 964
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$14$2;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 968
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14$2;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v1, v1, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/VideoEditorActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_19

    .line 972
    :goto_11
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14$2;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v1, v1, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # invokes: Lorg/telegram/ui/VideoEditorActivity;->onPlayComplete()V
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$800(Lorg/telegram/ui/VideoEditorActivity;)V

    .line 973
    return-void

    .line 969
    :catch_19
    move-exception v0

    .line 970
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.class Lorg/telegram/ui/VideoEditorActivity$10;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VideoEditorActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VideoEditorActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VideoEditorActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 783
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$10;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 786
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$10;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$10;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->muteVideo:Z
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$2500(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_b
    # setter for: Lorg/telegram/ui/VideoEditorActivity;->muteVideo:Z
    invoke-static {v1, v0}, Lorg/telegram/ui/VideoEditorActivity;->access$2502(Lorg/telegram/ui/VideoEditorActivity;Z)Z

    .line 787
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$10;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/VideoEditorActivity;->updateMuteButton()V

    .line 788
    return-void

    .line 786
    :cond_14
    const/4 v0, 0x0

    goto :goto_b
.end method

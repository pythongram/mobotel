.class Lorg/telegram/ui/VideoEditorActivity$21;
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
    .line 1201
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$21;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1204
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$21;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/VideoEditorActivity;->showQualityView(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/VideoEditorActivity;->access$4000(Lorg/telegram/ui/VideoEditorActivity;Z)V

    .line 1205
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$21;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    const/4 v1, 0x2

    # invokes: Lorg/telegram/ui/VideoEditorActivity;->requestVideoPreview(I)V
    invoke-static {v0, v1}, Lorg/telegram/ui/VideoEditorActivity;->access$1300(Lorg/telegram/ui/VideoEditorActivity;I)V

    .line 1206
    return-void
.end method

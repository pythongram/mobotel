.class Lorg/telegram/ui/StickerPreviewViewer$2;
.super Ljava/lang/Object;
.source "StickerPreviewViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/StickerPreviewViewer;->onTouch(Landroid/view/MotionEvent;Landroid/view/View;ILjava/lang/Object;Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/StickerPreviewViewer;

.field final synthetic val$listView:Landroid/view/View;

.field final synthetic val$listener:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/telegram/ui/StickerPreviewViewer;Landroid/view/View;Ljava/lang/Object;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/ui/StickerPreviewViewer;

    .prologue
    .line 162
    iput-object p1, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    iput-object p2, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->val$listView:Landroid/view/View;

    iput-object p3, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->val$listener:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 165
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->val$listView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_12

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->val$listView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->val$listener:Ljava/lang/Object;

    check-cast v1, Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 170
    :cond_11
    :goto_11
    return-void

    .line 167
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->val$listView:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_11

    .line 168
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->val$listView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->val$listener:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    goto :goto_11
.end method

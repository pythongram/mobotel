.class Lorg/telegram/ui/ArticleViewer$BlockCollageCell$1;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$BlockCollageCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

.field final synthetic val$this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/ArticleViewer$BlockCollageCell;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 3449
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$1;->val$this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public requestLayout()V
    .registers 2

    .prologue
    .line 3452
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->inLayout:Z
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->access$8100(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3456
    :goto_8
    return-void

    .line 3455
    :cond_9
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    goto :goto_8
.end method

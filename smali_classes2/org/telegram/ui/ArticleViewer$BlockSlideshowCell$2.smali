.class Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$2;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

.field final synthetic val$this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;Lorg/telegram/ui/ArticleViewer;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    .prologue
    .line 3637
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$2;->val$this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 3651
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 3641
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 3645
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->dotsContainer:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$8400(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 3646
    return-void
.end method

.class Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;
.super Ljava/lang/Object;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObjectContainer"
.end annotation


# instance fields
.field private block:Lorg/telegram/tgnet/TLRPC$PageBlock;

.field final synthetic this$2:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;

.field private view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;)V
    .registers 2
    .param p1, "this$2"    # Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;

    .prologue
    .line 3655
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;->this$2:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$8600(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;

    .prologue
    .line 3655
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8602(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 3655
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;->view:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$8700(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;)Lorg/telegram/tgnet/TLRPC$PageBlock;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;

    .prologue
    .line 3655
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;->block:Lorg/telegram/tgnet/TLRPC$PageBlock;

    return-object v0
.end method

.method static synthetic access$8702(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    .line 3655
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;->block:Lorg/telegram/tgnet/TLRPC$PageBlock;

    return-object p1
.end method

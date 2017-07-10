.class public Lorg/telegram/ui/Components/RecyclerListView;
.super Lorg/telegram/messenger/support/widget/RecyclerView;
.source "RecyclerListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;,
        Lorg/telegram/ui/Components/RecyclerListView$FastScroll;,
        Lorg/telegram/ui/Components/RecyclerListView$Holder;,
        Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;,
        Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;,
        Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;,
        Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;,
        Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;,
        Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;
    }
.end annotation


# static fields
.field private static attributes:[I

.field private static gotAttributes:Z


# instance fields
.field private clickRunnable:Ljava/lang/Runnable;

.field private currentChildPosition:I

.field private currentChildView:Landroid/view/View;

.field private currentFirst:I

.field private currentVisible:I

.field private disallowInterceptTouchEvents:Z

.field private emptyView:Landroid/view/View;

.field private fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private headers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private headersCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreOnScroll:Z

.field private instantClick:Z

.field private interceptedByChild:Z

.field private isChildViewEnabled:Z

.field private observer:Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;

.field private onInterceptTouchListener:Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;

.field private onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

.field private onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

.field private onScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

.field private pinnedHeader:Landroid/view/View;

.field private sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

.field private sectionsCount:I

.field private sectionsType:I

.field private selectChildRunnable:Ljava/lang/Runnable;

.field private selectorDrawable:Landroid/graphics/drawable/Drawable;

.field private selectorPosition:I

.field private selectorRect:Landroid/graphics/Rect;

.field private selfOnLayout:Z

.field private startSection:I

.field private wasPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 689
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 59
    iput v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentFirst:I

    .line 60
    iput v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentVisible:I

    .line 67
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    .line 657
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/RecyclerListView$1;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->observer:Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;

    .line 691
    const-string v3, "actionBarDefault"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 692
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 693
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 696
    :try_start_2b
    sget-boolean v3, Lorg/telegram/ui/Components/RecyclerListView;->gotAttributes:Z

    if-nez v3, :cond_3c

    .line 697
    const-string v3, "com.android.internal"

    const-string v4, "View"

    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getResourceDeclareStyleableIntArray(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v3

    sput-object v3, Lorg/telegram/ui/Components/RecyclerListView;->attributes:[I

    .line 698
    const/4 v3, 0x1

    sput-boolean v3, Lorg/telegram/ui/Components/RecyclerListView;->gotAttributes:Z

    .line 700
    :cond_3c
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lorg/telegram/ui/Components/RecyclerListView;->attributes:[I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 701
    .local v0, "a":Landroid/content/res/TypedArray;
    const-class v3, Landroid/view/View;

    const-string v4, "initializeScrollbars"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/res/TypedArray;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 702
    .local v2, "initializeScrollbars":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_62} :catch_73

    .line 707
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "initializeScrollbars":Ljava/lang/reflect/Method;
    :goto_62
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/RecyclerListView$2;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-super {p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 872
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->addOnItemTouchListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;)V

    .line 873
    return-void

    .line 704
    :catch_73
    move-exception v1

    .line 705
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_62
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selfOnLayout:Z

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/GestureDetector;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->gestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    return-object v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # Landroid/view/GestureDetector;

    .prologue
    .line 45
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->gestureDetector:Landroid/view/GestureDetector;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/RecyclerListView;ILandroid/view/View;)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->positionSelector(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/RecyclerListView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->updateSelectorState()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/RecyclerListView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->checkIfEmpty()V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/RecyclerListView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$FastScroll;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/RecyclerListView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 45
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->headersCache:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/RecyclerListView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentFirst:I

    return v0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/Components/RecyclerListView;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentFirst:I

    return p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/RecyclerListView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentVisible:I

    return v0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/RecyclerListView;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentVisible:I

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/RecyclerListView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsCount:I

    return v0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/Components/RecyclerListView;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsCount:I

    return p1
.end method

.method static synthetic access$2608(Lorg/telegram/ui/Components/RecyclerListView;)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsCount:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/RecyclerListView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->startSection:I

    return v0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Components/RecyclerListView;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->startSection:I

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/RecyclerListView;ILandroid/view/View;)Landroid/view/View;
    .registers 4
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 45
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/RecyclerListView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildPosition:I

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/RecyclerListView;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildPosition:I

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->instantClick:Z

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->clickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 45
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->clickRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 45
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->interceptedByChild:Z

    return v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/RecyclerListView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->interceptedByChild:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->removeSelection(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method private checkIfEmpty()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 951
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v2

    if-nez v2, :cond_c

    .line 957
    :cond_b
    :goto_b
    return-void

    .line 954
    :cond_c
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-nez v2, :cond_26

    const/4 v0, 0x1

    .line 955
    .local v0, "emptyViewVisible":Z
    :goto_17
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_28

    move v2, v1

    :goto_1c
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 956
    if-eqz v0, :cond_22

    const/4 v1, 0x4

    :cond_22
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    goto :goto_b

    .end local v0    # "emptyViewVisible":Z
    :cond_26
    move v0, v1

    .line 954
    goto :goto_17

    .line 955
    .restart local v0    # "emptyViewVisible":Z
    :cond_28
    const/16 v2, 0x8

    goto :goto_1c
.end method

.method private ensurePinnedHeaderLayout(Landroid/view/View;Z)V
    .registers 11
    .param p1, "header"    # Landroid/view/View;
    .param p2, "forceLayout"    # Z

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 1145
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-nez v4, :cond_b

    if-eqz p2, :cond_2e

    .line 1146
    :cond_b
    iget v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_34

    .line 1147
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1148
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1149
    .local v1, "heightSpec":I
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1151
    .local v3, "widthSpec":I
    :try_start_20
    invoke-virtual {p1, v3, v1}, Landroid/view/View;->measure(II)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_2f

    .line 1164
    .end local v1    # "heightSpec":I
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "widthSpec":I
    :cond_23
    :goto_23
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p1, v6, v6, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 1166
    :cond_2e
    return-void

    .line 1152
    .restart local v1    # "heightSpec":I
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "widthSpec":I
    :catch_2f
    move-exception v0

    .line 1153
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_23

    .line 1155
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "heightSpec":I
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "widthSpec":I
    :cond_34
    iget v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_23

    .line 1156
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1157
    .restart local v3    # "widthSpec":I
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1159
    .restart local v1    # "heightSpec":I
    :try_start_45
    invoke-virtual {p1, v3, v1}, Landroid/view/View;->measure(II)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_23

    .line 1160
    :catch_49
    move-exception v0

    .line 1161
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_23
.end method

.method private getDrawableStateForSelector()[I
    .registers 4

    .prologue
    .line 1046
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1047
    .local v0, "state":[I
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const v2, 0x10100a7

    aput v2, v0, v1

    .line 1048
    return-object v0
.end method

.method private getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .registers 7
    .param p1, "section"    # I
    .param p2, "oldView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1136
    if-nez p2, :cond_10

    const/4 v0, 0x1

    .line 1137
    .local v0, "shouldLayout":Z
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v3, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 1138
    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_f

    .line 1139
    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->ensurePinnedHeaderLayout(Landroid/view/View;Z)V

    .line 1141
    :cond_f
    return-object v1

    .end local v0    # "shouldLayout":Z
    .end local v1    # "view":Landroid/view/View;
    :cond_10
    move v0, v2

    .line 1136
    goto :goto_4
.end method

.method private positionSelector(ILandroid/view/View;)V
    .registers 9
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    .line 999
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/RecyclerListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 1000
    return-void
.end method

.method private positionSelector(ILandroid/view/View;ZFF)V
    .registers 15
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "manageHotspot"    # Z
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1003
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_7

    .line 1031
    :cond_6
    :goto_6
    return-void

    .line 1006
    :cond_7
    iget v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    if-eq p1, v4, :cond_60

    move v1, v2

    .line 1007
    .local v1, "positionChanged":Z
    :goto_c
    const/4 v4, -0x1

    if-eq p1, v4, :cond_11

    .line 1008
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    .line 1011
    :cond_11
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1013
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v0

    .line 1014
    .local v0, "enabled":Z
    iget-boolean v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->isChildViewEnabled:Z

    if-eq v4, v0, :cond_30

    .line 1015
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->isChildViewEnabled:Z

    .line 1018
    :cond_30
    if-eqz v1, :cond_3e

    .line 1019
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1020
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v5, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1022
    :cond_3e
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1023
    if-eqz v1, :cond_52

    .line 1024
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_52

    .line 1025
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1028
    :cond_52
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_6

    if-eqz p3, :cond_6

    .line 1029
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    goto :goto_6

    .end local v0    # "enabled":Z
    .end local v1    # "positionChanged":Z
    :cond_60
    move v1, v3

    .line 1006
    goto :goto_c
.end method

.method private removeSelection(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "pressedChild"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 617
    if-nez p1, :cond_3

    .line 635
    :goto_2
    return-void

    .line 620
    :cond_3
    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 621
    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildPosition:I

    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;->positionSelector(ILandroid/view/View;)V

    .line 622
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3a

    .line 623
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 624
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_25

    instance-of v1, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_25

    .line 625
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 627
    :cond_25
    if-eqz p2, :cond_3a

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3a

    .line 628
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 634
    :cond_3a
    :goto_3a
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->updateSelectorState()V

    goto :goto_2

    .line 632
    :cond_3e
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_3a
.end method

.method private updateSelectorState()V
    .registers 3

    .prologue
    .line 1034
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1035
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    if-eqz v0, :cond_22

    .line 1036
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getDrawableStateForSelector()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1037
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1043
    :cond_21
    :goto_21
    return-void

    .line 1040
    :cond_22
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_21
.end method


# virtual methods
.method public cancelClickRunnables(Z)V
    .registers 6
    .param p1, "uncheck"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 638
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_d

    .line 639
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 640
    iput-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;

    .line 642
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    if-eqz v1, :cond_1f

    .line 643
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    .line 644
    .local v0, "child":Landroid/view/View;
    if-eqz p1, :cond_1a

    .line 645
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 647
    :cond_1a
    iput-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    .line 648
    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->removeSelection(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 650
    .end local v0    # "child":Landroid/view/View;
    :cond_1f
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->clickRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2a

    .line 651
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->clickRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 652
    iput-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->clickRunnable:Ljava/lang/Runnable;

    .line 654
    :cond_2a
    iput-boolean v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->interceptedByChild:Z

    .line 655
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1189
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1190
    iget v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_5e

    .line 1191
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz v4, :cond_16

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1219
    :cond_16
    :goto_16
    return-void

    .line 1194
    :cond_17
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_18
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_a4

    .line 1195
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1196
    .local v1, "header":Landroid/view/View;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1197
    .local v2, "saveCount":I
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1198
    .local v3, "top":I
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_5c

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    :goto_44
    int-to-float v6, v3

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1199
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p1, v7, v7, v4, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1200
    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1201
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1194
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_5c
    move v4, v5

    .line 1198
    goto :goto_44

    .line 1203
    .end local v0    # "a":I
    .end local v1    # "header":Landroid/view/View;
    .end local v2    # "saveCount":I
    .end local v3    # "top":I
    :cond_5e
    iget v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_a4

    .line 1204
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz v4, :cond_16

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    if-eqz v4, :cond_16

    .line 1207
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1208
    .restart local v2    # "saveCount":I
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1209
    .restart local v3    # "top":I
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_8b

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v5, v4

    :cond_8b
    int-to-float v4, v3

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1210
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p1, v7, v7, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1211
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1212
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1215
    .end local v2    # "saveCount":I
    .end local v3    # "top":I
    :cond_a4
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_16

    .line 1216
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1217
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_16
.end method

.method protected drawableStateChanged()V
    .registers 1

    .prologue
    .line 1066
    invoke-super {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->drawableStateChanged()V

    .line 1067
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->updateSelectorState()V

    .line 1068
    return-void
.end method

.method public getEmptyView()Landroid/view/View;
    .registers 2

    .prologue
    .line 926
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    return-object v0
.end method

.method public getHeaders()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1229
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHeadersCache()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1233
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->headersCache:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPinnedHeader()Landroid/view/View;
    .registers 2

    .prologue
    .line 1237
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    return-object v0
.end method

.method public getResourceDeclareStyleableIntArray(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 678
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".R$styleable"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 679
    .local v0, "f":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_29

    .line 680
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_27} :catch_28

    .line 685
    .end local v0    # "f":Ljava/lang/reflect/Field;
    :goto_27
    return-object v1

    .line 682
    :catch_28
    move-exception v1

    :cond_29
    move-object v1, v2

    .line 685
    goto :goto_27
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 1132
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateViews()V
    .registers 4

    .prologue
    .line 930
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v1

    .line 931
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_5
    if-ge v0, v1, :cond_11

    .line 932
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 931
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 934
    :cond_11
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 1077
    invoke-super {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->jumpDrawablesToCurrentState()V

    .line 1078
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 1079
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1081
    :cond_c
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 1085
    invoke-super {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onAttachedToWindow()V

    .line 1086
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v1, v2, :cond_2d

    .line 1087
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1088
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_22

    .line 1089
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1091
    :cond_22
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "parent":Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .line 1092
    .restart local v0    # "parent":Landroid/view/ViewGroup;
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1094
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_2d
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1053
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    if-eqz v1, :cond_1f

    .line 1054
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 1055
    .local v0, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_1b

    .line 1056
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;->isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1061
    .end local v0    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_1b
    :goto_1b
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 1062
    return-void

    .line 1059
    :cond_1f
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1b
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 1223
    invoke-super {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onDetachedFromWindow()V

    .line 1224
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    .line 1225
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1226
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 944
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->disallowInterceptTouchEvents:Z

    if-eqz v1, :cond_8

    .line 945
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 947
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchListener:Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchListener:Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;

    invoke-interface {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_14
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_1a
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v4, 0x0

    .line 892
    invoke-super/range {p0 .. p5}, Lorg/telegram/messenger/support/widget/RecyclerView;->onLayout(ZIIII)V

    .line 893
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-eqz v1, :cond_23

    .line 894
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selfOnLayout:Z

    .line 895
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_24

    .line 896
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {v1, v4, p3, v2, v3}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->layout(IIII)V

    .line 901
    :goto_21
    iput-boolean v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selfOnLayout:Z

    .line 903
    :cond_23
    return-void

    .line 898
    :cond_24
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getMeasuredWidth()I

    move-result v2

    sub-int v0, v1, v2

    .line 899
    .local v0, "x":I
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {v1, v0, p3, v2, v3}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->layout(IIII)V

    goto :goto_21
.end method

.method protected onMeasure(II)V
    .registers 7
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 884
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->onMeasure(II)V

    .line 885
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-eqz v0, :cond_20

    .line 886
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    const/high16 v1, 0x43040000    # 132.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->measure(II)V

    .line 888
    :cond_20
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 10
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v4, 0x1

    .line 1170
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/support/widget/RecyclerView;->onSizeChanged(IIII)V

    .line 1171
    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    if-ne v2, v4, :cond_2c

    .line 1172
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1185
    :cond_14
    :goto_14
    return-void

    .line 1175
    :cond_15
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_16
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_14

    .line 1176
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1177
    .local v1, "header":Landroid/view/View;
    invoke-direct {p0, v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->ensurePinnedHeaderLayout(Landroid/view/View;Z)V

    .line 1175
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1179
    .end local v0    # "a":I
    .end local v1    # "header":Landroid/view/View;
    :cond_2c
    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    .line 1180
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    if-eqz v2, :cond_14

    .line 1183
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-direct {p0, v2, v4}, Lorg/telegram/ui/Components/RecyclerListView;->ensurePinnedHeaderLayout(Landroid/view/View;Z)V

    goto :goto_14
.end method

.method public setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V
    .registers 5
    .param p1, "adapter"    # Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    .prologue
    const/4 v2, 0x0

    .line 1098
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 1099
    .local v0, "oldAdapter":Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    if-eqz v0, :cond_c

    .line 1100
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->observer:Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;)V

    .line 1102
    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    if-eqz v1, :cond_1a

    .line 1103
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1104
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->headersCache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1106
    :cond_1a
    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    .line 1107
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1108
    iput-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    .line 1109
    instance-of v1, p1, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz v1, :cond_3b

    move-object v1, p1

    .line 1110
    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    .line 1114
    :goto_2d
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1115
    if-eqz p1, :cond_37

    .line 1116
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->observer:Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;)V

    .line 1118
    :cond_37
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->checkIfEmpty()V

    .line 1119
    return-void

    .line 1112
    :cond_3b
    iput-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    goto :goto_2d
.end method

.method public setDisallowInterceptTouchEvents(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 973
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->disallowInterceptTouchEvents:Z

    .line 974
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 918
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    if-ne v0, p1, :cond_5

    .line 923
    :goto_4
    return-void

    .line 921
    :cond_5
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    .line 922
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->checkIfEmpty()V

    goto :goto_4
.end method

.method public setFastScrollEnabled()V
    .registers 3

    .prologue
    .line 977
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    .line 978
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 979
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 981
    :cond_1c
    return-void
.end method

.method public setFastScrollVisible(Z)V
    .registers 4
    .param p1, "value"    # Z

    .prologue
    .line 984
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-nez v0, :cond_5

    .line 988
    :goto_4
    return-void

    .line 987
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->setVisibility(I)V

    goto :goto_4

    :cond_e
    const/16 v0, 0x8

    goto :goto_a
.end method

.method public setInstantClick(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 969
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->instantClick:Z

    .line 970
    return-void
.end method

.method public setListSelectorColor(I)V
    .registers 4
    .param p1, "color"    # I

    .prologue
    .line 906
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 907
    return-void
.end method

.method public setOnInterceptTouchListener(Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;)V
    .registers 2
    .param p1, "listener"    # Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;

    .prologue
    .line 965
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchListener:Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;

    .line 966
    return-void
.end method

.method public setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V
    .registers 2
    .param p1, "listener"    # Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    .prologue
    .line 910
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    .line 911
    return-void
.end method

.method public setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V
    .registers 2
    .param p1, "listener"    # Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    .prologue
    .line 914
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    .line 915
    return-void
.end method

.method public setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V
    .registers 2
    .param p1, "listener"    # Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    .prologue
    .line 961
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    .line 962
    return-void
.end method

.method public setSectionsType(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 991
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    .line 992
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 993
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    .line 994
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->headersCache:Ljava/util/ArrayList;

    .line 996
    :cond_15
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .registers 3
    .param p1, "verticalScrollBarEnabled"    # Z

    .prologue
    .line 877
    sget-object v0, Lorg/telegram/ui/Components/RecyclerListView;->attributes:[I

    if-eqz v0, :cond_7

    .line 878
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 880
    :cond_7
    return-void
.end method

.method public stopScroll()V
    .registers 2

    .prologue
    .line 1124
    :try_start_0
    invoke-super {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopScroll()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1128
    :goto_3
    return-void

    .line 1125
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public updateFastScrollColors()V
    .registers 2

    .prologue
    .line 937
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-eqz v0, :cond_9

    .line 938
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    # invokes: Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->updateColors()V
    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->access$3000(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;)V

    .line 940
    :cond_9
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1072
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_a

    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

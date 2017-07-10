.class public Lorg/telegram/ui/Components/EmojiView;
.super Landroid/widget/FrameLayout;
.source "EmojiView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/EmojiView$GifsAdapter;,
        Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;,
        Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;,
        Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;,
        Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;,
        Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;,
        Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;,
        Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;,
        Lorg/telegram/ui/Components/EmojiView$Listener;
    }
.end annotation


# static fields
.field private static final NOP:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private static emojiColor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final superListenerField:Ljava/lang/reflect/Field;


# instance fields
.field private adapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private backspaceButton:Landroid/widget/ImageView;

.field private backspaceOnce:Z

.field private backspacePressed:Z

.field private currentBackgroundType:I

.field private currentPage:I

.field private dotPaint:Landroid/graphics/Paint;

.field private emojiGrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation
.end field

.field private emojiSize:I

.field private emojiTab:Landroid/widget/LinearLayout;

.field private emojiUseHistory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private favEmojis:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private favStickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private favStickersEdit:Z

.field private favStickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

.field private favStickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private favStickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

.field private favStickersWrap:Landroid/widget/FrameLayout;

.field private favTabNum:I

.field private featuredStickersHash:I

.field private flowLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

.field private gifTabNum:I

.field private gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

.field private gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private icons:[Landroid/graphics/drawable/Drawable;

.field private installingStickerSets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private isLayout:Z

.field private lastNotifyWidth:I

.field private listener:Lorg/telegram/ui/Components/EmojiView$Listener;

.field private location:[I

.field private minusDy:I

.field private newFavStickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private oldWidth:I

.field private outlineProvider:Ljava/lang/Object;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

.field private pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

.field private pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

.field private popupHeight:I

.field private popupWidth:I

.field private recentEmoji:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private recentGifs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private recentStickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private recentTabBum:I

.field private removingStickerSets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private showFavEmojies:Z

.field private showFavStickers:Z

.field private showGifs:Z

.field private stickerPreviewViewerDelegate:Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

.field private stickerSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private stickersEmptyView:Landroid/widget/TextView;

.field private stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

.field private stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

.field private stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

.field private stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

.field private stickersTabOffset:I

.field private stickersWrap:Landroid/widget/FrameLayout;

.field private switchToGifTab:Z

.field private trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

.field private trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private trendingLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

.field private trendingLoaded:Z

.field private trendingTabNum:I

.field private views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, "f":Ljava/lang/reflect/Field;
    :try_start_1
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "mOnScrollChangedListener"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 131
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_d} :catch_1e

    .line 135
    :goto_d
    sput-object v0, Lorg/telegram/ui/Components/EmojiView;->superListenerField:Ljava/lang/reflect/Field;

    .line 137
    new-instance v1, Lorg/telegram/ui/Components/EmojiView$2;

    invoke-direct {v1}, Lorg/telegram/ui/Components/EmojiView$2;-><init>()V

    sput-object v1, Lorg/telegram/ui/Components/EmojiView;->NOP:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 593
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/telegram/ui/Components/EmojiView;->emojiColor:Ljava/util/HashMap;

    return-void

    .line 132
    :catch_1e
    move-exception v1

    goto :goto_d
.end method

.method public constructor <init>(ZZLandroid/content/Context;)V
    .registers 25
    .param p1, "needStickers"    # Z
    .param p2, "needGif"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 672
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/EmojiView$1;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickerPreviewViewerDelegate:Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    .line 591
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    .line 592
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    .line 594
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    .line 595
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    .line 597
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    .line 598
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    .line 607
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;

    .line 608
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiGrids:Ljava/util/ArrayList;

    .line 625
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Ljava/util/HashMap;

    .line 626
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Ljava/util/HashMap;

    .line 637
    const/4 v2, 0x2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->location:[I

    .line 639
    const/4 v2, -0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    .line 640
    const/4 v2, -0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    .line 641
    const/4 v2, -0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    .line 645
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    .line 660
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->favEmojis:Ljava/util/ArrayList;

    .line 661
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->favStickers:Ljava/util/ArrayList;

    .line 667
    const/4 v2, -0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    .line 668
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->newFavStickers:Ljava/util/ArrayList;

    .line 674
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02017c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 675
    .local v14, "stickersDrawable":Landroid/graphics/drawable/Drawable;
    const-string v2, "chat_emojiPanelIcon"

    invoke-static {v14, v2}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColorByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 676
    const/16 v2, 0x8

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const v4, 0x7f02017e

    const-string v5, "chat_emojiPanelIcon"

    .line 677
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const-string v6, "chat_emojiPanelIconSelected"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f02017a

    const-string v5, "chat_emojiPanelIcon"

    .line 678
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const-string v6, "chat_emojiPanelIconSelected"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const v4, 0x7f02017b

    const-string v5, "chat_emojiPanelIcon"

    .line 679
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const-string v6, "chat_emojiPanelIconSelected"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const v4, 0x7f020178

    const-string v5, "chat_emojiPanelIcon"

    .line 680
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const-string v6, "chat_emojiPanelIconSelected"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const v4, 0x7f020177

    const-string v5, "chat_emojiPanelIcon"

    .line 681
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const-string v6, "chat_emojiPanelIconSelected"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const v4, 0x7f020176

    const-string v5, "chat_emojiPanelIcon"

    .line 682
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const-string v6, "chat_emojiPanelIconSelected"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const v4, 0x7f020179

    const-string v5, "chat_emojiPanelIcon"

    .line 683
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const-string v6, "chat_emojiPanelIconSelected"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object v14, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->icons:[Landroid/graphics/drawable/Drawable;

    .line 687
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/EmojiView;->showGifs:Z

    .line 689
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->dotPaint:Landroid/graphics/Paint;

    .line 690
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 691
    .local v15, "tPrefs":Landroid/content/SharedPreferences;
    const-string v2, "show_fav_emojies"

    const/4 v3, 0x1

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z

    .line 692
    if-eqz p1, :cond_227

    const-string v2, "show_fav_stickers"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_227

    const/4 v2, 0x1

    :goto_19a
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/EmojiView;->showFavStickers:Z

    .line 693
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->dotPaint:Landroid/graphics/Paint;

    const-string v3, "chat_emojiPanelNewTrending"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 695
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1bc

    .line 696
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/EmojiView$3;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->outlineProvider:Ljava/lang/Object;

    .line 705
    :cond_1bc
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1bd
    sget-object v2, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    array-length v3, v2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z

    if-eqz v2, :cond_22a

    const/4 v2, 0x2

    :goto_1c7
    add-int/2addr v2, v3

    if-ge v13, v2, :cond_238

    .line 706
    new-instance v12, Landroid/widget/GridView;

    move-object/from16 v0, p3

    invoke-direct {v12, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 707
    .local v12, "gridView":Landroid/widget/GridView;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_22c

    .line 708
    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 712
    :goto_1e0
    const/4 v2, -0x1

    invoke-virtual {v12, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 713
    new-instance v9, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z

    if-eqz v2, :cond_236

    const/4 v2, 0x2

    :goto_1ed
    sub-int v2, v13, v2

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    .line 715
    .local v9, "emojiGridAdapter":Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;
    invoke-virtual {v12, v9}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiGrids:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    new-instance v11, Landroid/widget/FrameLayout;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 719
    .local v11, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v11, v12, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    add-int/lit8 v13, v13, 0x1

    goto :goto_1bd

    .line 692
    .end local v9    # "emojiGridAdapter":Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;
    .end local v11    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v12    # "gridView":Landroid/widget/GridView;
    .end local v13    # "i":I
    :cond_227
    const/4 v2, 0x0

    goto/16 :goto_19a

    .line 705
    .restart local v13    # "i":I
    :cond_22a
    const/4 v2, 0x1

    goto :goto_1c7

    .line 710
    .restart local v12    # "gridView":Landroid/widget/GridView;
    :cond_22c
    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    goto :goto_1e0

    .line 713
    :cond_236
    const/4 v2, 0x1

    goto :goto_1ed

    .line 724
    .end local v12    # "gridView":Landroid/widget/GridView;
    :cond_238
    if-eqz p1, :cond_642

    .line 725
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    .line 727
    const/4 v2, 0x0

    invoke-static {v2}, Lorg/telegram/messenger/query/StickersQuery;->checkStickers(I)V

    .line 728
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->checkFeaturedStickers()V

    .line 729
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/EmojiView$4;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/messenger/support/widget/GridLayoutManager;

    const/4 v4, 0x5

    move-object/from16 v0, p3

    invoke-direct {v3, v0, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$5;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setSpanSizeLookup(Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    const/high16 v4, 0x42500000    # 52.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 757
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 758
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1, v4}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$6;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 766
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/EmojiView$7;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    .line 799
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 800
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string v3, "chat_emojiPanelBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 801
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 803
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 804
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V

    .line 805
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$8;

    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1, v4}, Lorg/telegram/ui/Components/EmojiView$8;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->trendingLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$9;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setSpanSizeLookup(Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 821
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$10;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 828
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 830
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$11;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 839
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->notifyDataSetChanged()V

    .line 840
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string v3, "chat_emojiPanelBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 844
    if-eqz p2, :cond_44d

    .line 845
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 846
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 847
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 848
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$12;

    const/16 v4, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1, v4}, Lorg/telegram/ui/Components/EmojiView$12;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->flowLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->flowLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$13;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->setSpanSizeLookup(Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 874
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$14;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;)V

    .line 887
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOverScrollMode(I)V

    .line 888
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/EmojiView$GifsAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 889
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$15;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$16;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 904
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$17;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$17;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 932
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 933
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 936
    :cond_44d
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    const-string v3, "NoStickers"

    const v4, 0x7f070370

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 938
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    const-string v3, "chat_emojiPanelEmptyText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 941
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 943
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/EmojiView;->showFavStickers:Z

    if-eqz v2, :cond_5ae

    .line 944
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$18;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/EmojiView$18;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->favStickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 949
    new-instance v2, Lorg/telegram/messenger/support/widget/GridLayoutManager;

    const/4 v3, 0x5

    move-object/from16 v0, p3

    invoke-direct {v2, v0, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->favStickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    .line 950
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->favStickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/messenger/support/widget/GridLayoutManager;

    const/4 v4, 0x5

    move-object/from16 v0, p3

    invoke-direct {v3, v0, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->favStickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$19;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$19;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setSpanSizeLookup(Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->favStickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$20;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$20;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 964
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->favStickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 965
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->favStickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 966
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    .line 967
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->favStickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    .line 968
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->favStickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 969
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->favStickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$21;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$21;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 974
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->favStickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 975
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->favStickersWrap:Landroid/widget/FrameLayout;

    .line 976
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->favStickersWrap:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->favStickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 977
    new-instance v10, Landroid/widget/TextView;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 978
    .local v10, "favStickersEmptyView":Landroid/widget/TextView;
    const-string v2, "NoFavStickers"

    const v3, 0x7f07076e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 979
    const/4 v2, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v10, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 980
    const-string v2, "chat_emojiPanelEmptyText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 981
    const/16 v2, 0x11

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 982
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->favStickersWrap:Landroid/widget/FrameLayout;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x11

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 983
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->favStickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 984
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->favStickersWrap:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 985
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->favStickersWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 988
    .end local v10    # "favStickersEmptyView":Landroid/widget/TextView;
    :cond_5ae
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$22;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/EmojiView$22;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    .line 1045
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineHeight(I)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const-string v3, "chat_emojiPanelStickerPackSelector"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setIndicatorColor(I)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const-string v3, "chat_emojiPanelStickerPackSelector"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineColor(I)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const-string v3, "chat_emojiPanelBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setBackgroundColor(I)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setVisibility(I)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EmojiView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1051
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setTranslationX(F)V

    .line 1052
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    .line 1054
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$23;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$23;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setDelegate(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;)V

    .line 1131
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$24;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$24;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setOnTabLongClickListener(Lorg/telegram/ui/Components/PagerSlidingTabStrip$OnTabLongClickListener;)V

    .line 1198
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$25;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$25;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 1206
    :cond_642
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$26;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/EmojiView$26;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    .line 1215
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$1;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1216
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z

    if-eqz v2, :cond_91f

    const/4 v2, 0x1

    :goto_669
    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1217
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$27;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/EmojiView$27;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    .line 1226
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EmojiView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1229
    new-instance v2, Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    .line 1230
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setShouldExpand(Z)V

    .line 1232
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setIndicatorHeight(I)V

    .line 1233
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setUnderlineHeight(I)V

    .line 1234
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const-string v3, "chat_emojiPanelIconSelector"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setIndicatorColor(I)V

    .line 1235
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const-string v3, "chat_emojiPanelShadowLine"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setUnderlineColor(I)V

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/4 v4, 0x0

    const/16 v5, 0x30

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1237
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$28;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$28;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1253
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$29;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$29;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setOnTabLongClickListener(Lorg/telegram/ui/Components/PagerSlidingTabStrip$OnTabLongClickListener;)V

    .line 1301
    new-instance v11, Landroid/widget/FrameLayout;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1302
    .restart local v11    # "frameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    const/16 v3, 0x34

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1304
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$30;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/EmojiView$30;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    .line 1323
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const v3, 0x7f02017d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string v4, "chat_emojiPanelBackspace"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1326
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/16 v3, 0x34

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1328
    new-instance v17, Landroid/view/View;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1329
    .local v17, "view":Landroid/view/View;
    const-string v2, "chat_emojiPanelShadowLine"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1330
    const/16 v2, 0x34

    const/4 v3, 0x1

    const/16 v4, 0x53

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1332
    new-instance v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1333
    .local v16, "textView":Landroid/widget/TextView;
    const-string v2, "NoRecent"

    const v3, 0x7f070365

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1334
    const/4 v2, 0x1

    const/high16 v3, 0x41900000    # 18.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1335
    const-string v2, "chat_emojiPanelEmptyText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1336
    const/16 v2, 0x11

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1337
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1338
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1339
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z

    if-eqz v2, :cond_922

    const/4 v2, 0x1

    :goto_7d6
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/FrameLayout;

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1340
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->emojiGrids:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z

    if-eqz v2, :cond_925

    const/4 v2, 0x1

    :goto_7fe
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 1341
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z

    if-eqz v2, :cond_85f

    .line 1342
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1343
    .local v18, "vieww":Landroid/widget/TextView;
    const-string v2, "NoFavEmojis"

    const v3, 0x7f07076d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1344
    const/high16 v2, 0x41600000    # 14.0f

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1345
    const-string v2, "chat_emojiPanelEmptyText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1346
    const/16 v2, 0x11

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1347
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiGrids:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 1350
    .end local v18    # "vieww":Landroid/widget/TextView;
    :cond_85f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x33

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Components/EmojiView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1352
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_928

    const/high16 v2, 0x42200000    # 40.0f

    :goto_879
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiSize:I

    .line 1353
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    .line 1354
    new-instance v3, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_92c

    const/16 v2, 0x28

    :goto_89c
    mul-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lorg/telegram/ui/Components/EmojiView;->popupWidth:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_930

    const/high16 v2, 0x42800000    # 64.0f

    :goto_8b3
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->popupHeight:I

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    .line 1355
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->setOutsideTouchable(Z)V

    .line 1356
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->setClippingEnabled(Z)V

    .line 1357
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->setInputMethodMode(I)V

    .line 1358
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->setSoftInputMode(I)V

    .line 1359
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$31;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$31;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1370
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "emoji"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "selected_page"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    .line 1371
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->loadRecents()V

    .line 1372
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->loadFavorites()V

    .line 1373
    return-void

    .line 1216
    .end local v11    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v16    # "textView":Landroid/widget/TextView;
    .end local v17    # "view":Landroid/view/View;
    :cond_91f
    const/4 v2, 0x0

    goto/16 :goto_669

    .line 1339
    .restart local v11    # "frameLayout":Landroid/widget/FrameLayout;
    .restart local v16    # "textView":Landroid/widget/TextView;
    .restart local v17    # "view":Landroid/view/View;
    :cond_922
    const/4 v2, 0x0

    goto/16 :goto_7d6

    .line 1340
    :cond_925
    const/4 v2, 0x0

    goto/16 :goto_7fe

    .line 1352
    :cond_928
    const/high16 v2, 0x42000000    # 32.0f

    goto/16 :goto_879

    .line 1354
    :cond_92c
    const/16 v2, 0x20

    goto/16 :goto_89c

    :cond_930
    const/high16 v2, 0x42600000    # 56.0f

    goto :goto_8b3
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/EmojiView;)[I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->location:[I

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/EmojiView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSize:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/EmojiView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->popupWidth:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/EmojiView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->popupHeight:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/EmojiView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1800(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->addColorToCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/messenger/support/widget/GridLayoutManager;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/EmojiView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->sortEmoji()V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/EmojiView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveRecentEmoji()V

    return-void
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/EmojiView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveEmojiColors()V

    return-void
.end method

.method static synthetic access$2500()Ljava/lang/reflect/Field;
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lorg/telegram/ui/Components/EmojiView;->superListenerField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$2600()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lorg/telegram/ui/Components/EmojiView;->NOP:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickerPreviewViewerDelegate:Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/EmojiView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->favStickersEdit:Z

    return v0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->favStickersEdit:Z

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;I)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->checkStickersTabY(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4102(Lorg/telegram/ui/Components/EmojiView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->flowLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifsAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    return-object v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/EmojiView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    return-void
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->favStickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->favStickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    return-object v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/EmojiView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    return v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/EmojiView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    return v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/EmojiView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->showTrendingTab()V

    return-void
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->favStickersWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/EmojiView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    return v0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/EmojiView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->checkScroll()V

    return-void
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/EmojiView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveNewPage()V

    return-void
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/EmojiView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->showFavStickersTab()V

    return-void
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/EmojiView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->showGifTab()V

    return-void
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/EmojiView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    return v0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/EmojiView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    return v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/EmojiView;III)V
    .registers 4
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView;->onPageScrolled(III)V

    return-void
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Components/EmojiView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspacePressed:Z

    return v0
.end method

.method static synthetic access$6402(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->backspacePressed:Z

    return p1
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Components/EmojiView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceOnce:Z

    return v0
.end method

.method static synthetic access$6502(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceOnce:Z

    return p1
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/EmojiView;I)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->postBackspaceRunnable(I)V

    return-void
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Components/EmojiView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    return-void
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/messenger/support/widget/GridLayoutManager;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    return-object v0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Components/EmojiView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingLoaded:Z

    return v0
.end method

.method static synthetic access$7202(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->trendingLoaded:Z

    return p1
.end method

.method static synthetic access$7302(Lorg/telegram/ui/Components/EmojiView;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->featuredStickersHash:I

    return p1
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/messenger/support/widget/GridLayoutManager;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->favStickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    return-object v0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->favStickers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->favEmojis:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Components/EmojiView;)[Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->icons:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Components/EmojiView;)Landroid/graphics/Paint;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->dotPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lorg/telegram/ui/Components/EmojiView;->emojiColor:Ljava/util/HashMap;

    return-object v0
.end method

.method private static addColorToCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x200d

    const/4 v3, 0x0

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "end":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 147
    .local v1, "lenght":I
    const/4 v2, 0x2

    if-le v1, v2, :cond_50

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_50

    .line 148
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 154
    :cond_2b
    :goto_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 155
    if-eqz v0, :cond_4f

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 158
    :cond_4f
    return-object p0

    .line 150
    :cond_50
    const/4 v2, 0x3

    if-le v1, v2, :cond_2b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2b

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2b
.end method

.method private checkDocuments(Z)V
    .registers 4
    .param p1, "isGif"    # Z

    .prologue
    .line 2160
    if-eqz p1, :cond_23

    .line 2161
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2162
    .local v0, "previousCount":I
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getRecentGifs()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    .line 2163
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    if-eqz v1, :cond_17

    .line 2164
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$GifsAdapter;->notifyDataSetChanged()V

    .line 2166
    :cond_17
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_22

    .line 2167
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    .line 2179
    :cond_22
    :goto_22
    return-void

    .line 2170
    .end local v0    # "previousCount":I
    :cond_23
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2171
    .restart local v0    # "previousCount":I
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/messenger/query/StickersQuery;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    .line 2172
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v1, :cond_39

    .line 2173
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    .line 2175
    :cond_39
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_22

    .line 2176
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    goto :goto_22
.end method

.method private checkPanels()V
    .registers 10

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 1702
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v3, :cond_ae

    .line 1703
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    if-ne v3, v7, :cond_3f

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->favStickersWrap:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->favStickersWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3f

    .line 1704
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v3, :cond_22

    .line 1705
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1707
    :cond_22
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1708
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->favStickersWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1709
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1710
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getItemCount()I

    move-result v3

    if-eqz v3, :cond_af

    move v3, v4

    :goto_3c
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1712
    :cond_3f
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    if-ne v3, v7, :cond_74

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v3, :cond_74

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_74

    .line 1713
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1714
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1715
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->favStickersWrap:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_62

    .line 1716
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->favStickersWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1718
    :cond_62
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1719
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    .line 1720
    .local v1, "textView":Landroid/widget/TextView;
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getItemCount()I

    move-result v3

    if-eqz v3, :cond_b1

    .line 1721
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1727
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_74
    :goto_74
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    if-ne v3, v7, :cond_b5

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v3, :cond_b5

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_b5

    .line 1728
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    invoke-interface {v3, v5}, Lorg/telegram/ui/Components/EmojiView$Listener;->onGifTab(Z)V

    .line 1729
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1730
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1731
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->favStickersWrap:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_9c

    .line 1732
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->favStickersWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1734
    :cond_9c
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1735
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    .line 1736
    .local v2, "textView2":Landroid/widget/TextView;
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getItemCount()I

    move-result v3

    if-nez v3, :cond_ae

    .line 1737
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1757
    .end local v2    # "textView2":Landroid/widget/TextView;
    :cond_ae
    :goto_ae
    return-void

    :cond_af
    move v3, v5

    .line 1710
    goto :goto_3c

    .line 1723
    .restart local v1    # "textView":Landroid/widget/TextView;
    :cond_b1
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_74

    .line 1739
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_b5
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    if-eq v3, v7, :cond_da

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->favStickersWrap:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_da

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->favStickersWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_da

    .line 1740
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    add-int/lit8 v5, v3, 0x1

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v3, :cond_d7

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    :goto_d1
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v5, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto :goto_ae

    :cond_d7
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_d1

    .line 1741
    :cond_da
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    if-ne v3, v7, :cond_ff

    .line 1742
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 1743
    .local v0, "position":I
    if-eq v0, v8, :cond_ae

    .line 1744
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getTabForPosition(I)I

    move-result v3

    add-int/lit8 v5, v3, 0x1

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v3, :cond_fc

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    :goto_f6
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v5, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto :goto_ae

    :cond_fc
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_f6

    .line 1746
    .end local v0    # "position":I
    :cond_ff
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v3, :cond_120

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_120

    .line 1747
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    add-int/lit8 v5, v3, 0x1

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v3, :cond_11d

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    :goto_117
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v5, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto :goto_ae

    :cond_11d
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_117

    .line 1748
    :cond_120
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v3, :cond_12c

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_14e

    .line 1749
    :cond_12c
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 1750
    .restart local v0    # "position":I
    if-eq v0, v8, :cond_ae

    .line 1751
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getTabForPosition(I)I

    move-result v3

    add-int/lit8 v5, v3, 0x1

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v3, :cond_14b

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    :goto_144
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v5, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto/16 :goto_ae

    :cond_14b
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_144

    .line 1754
    .end local v0    # "position":I
    :cond_14e
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    add-int/lit8 v5, v3, 0x1

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v3, :cond_161

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    :goto_15a
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v5, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto/16 :goto_ae

    :cond_161
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_15a
.end method

.method private checkScroll()V
    .registers 5

    .prologue
    .line 1393
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 1394
    .local v0, "firstVisibleItem":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 1411
    :cond_9
    :goto_9
    return-void

    .line 1397
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_9

    .line 1400
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_50

    .line 1401
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_28

    .line 1402
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1404
    :cond_28
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3b

    .line 1405
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1407
    :cond_3b
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    add-int/lit8 v3, v1, 0x1

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v1, :cond_4d

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    :goto_47
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto :goto_9

    :cond_4d
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_47

    .line 1410
    :cond_50
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getTabForPosition(I)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v1, :cond_66

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    :goto_60
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto :goto_9

    :cond_66
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_60
.end method

.method private checkStickersTabY(Landroid/view/View;I)V
    .registers 6
    .param p1, "list"    # Landroid/view/View;
    .param p2, "dy"    # I

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x43900000    # 288.0f

    .line 1376
    if-nez p1, :cond_e

    .line 1377
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iput v1, p0, Lorg/telegram/ui/Components/EmojiView;->minusDy:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setTranslationY(F)V

    .line 1390
    :cond_d
    :goto_d
    return-void

    .line 1380
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 1383
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->minusDy:I

    sub-int/2addr v0, p2

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->minusDy:I

    .line 1384
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->minusDy:I

    if-lez v0, :cond_33

    .line 1385
    iput v1, p0, Lorg/telegram/ui/Components/EmojiView;->minusDy:I

    .line 1389
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/high16 v1, 0x423c0000    # 47.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->minusDy:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setTranslationY(F)V

    goto :goto_d

    .line 1386
    :cond_33
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->minusDy:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    if-ge v0, v1, :cond_1f

    .line 1387
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->minusDy:I

    goto :goto_1f
.end method

.method private onPageScrolled(III)V
    .registers 9
    .param p1, "position"    # I
    .param p2, "width"    # I
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const/4 v4, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1469
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-nez v1, :cond_8

    .line 1501
    :cond_7
    :goto_7
    return-void

    .line 1472
    :cond_8
    if-eqz p1, :cond_10

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z

    if-eqz v1, :cond_1b

    if-ne p1, v2, :cond_1b

    .line 1473
    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 1475
    :cond_1b
    if-nez p2, :cond_21

    .line 1476
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, v1, Landroid/graphics/Point;->x:I

    .line 1479
    :cond_21
    const/4 v0, 0x0

    .line 1480
    .local v0, "margin":I
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z

    if-eqz v1, :cond_57

    move v1, v4

    :goto_27
    if-ne p1, v1, :cond_5b

    .line 1481
    neg-int v0, p3

    .line 1482
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    if-eqz v1, :cond_36

    .line 1483
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    if-eqz p3, :cond_59

    move v1, v2

    :goto_33
    invoke-interface {v4, v1}, Lorg/telegram/ui/Components/EmojiView$Listener;->onStickersTab(Z)V

    .line 1496
    :cond_36
    :goto_36
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result v1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7

    .line 1497
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 1498
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    add-int v2, p2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setTranslationX(F)V

    .line 1499
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-gez v0, :cond_79

    :goto_53
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setVisibility(I)V

    goto :goto_7

    .line 1480
    :cond_57
    const/4 v1, 0x5

    goto :goto_27

    :cond_59
    move v1, v3

    .line 1483
    goto :goto_33

    .line 1485
    :cond_5b
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z

    if-eqz v1, :cond_6d

    const/4 v1, 0x7

    :goto_60
    if-ne p1, v1, :cond_6f

    .line 1486
    neg-int v0, p2

    .line 1487
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    if-eqz v1, :cond_36

    .line 1488
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/EmojiView$Listener;->onStickersTab(Z)V

    goto :goto_36

    :cond_6d
    move v1, v4

    .line 1485
    goto :goto_60

    .line 1491
    :cond_6f
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    if-eqz v1, :cond_36

    .line 1492
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    invoke-interface {v1, v3}, Lorg/telegram/ui/Components/EmojiView$Listener;->onStickersTab(Z)V

    goto :goto_36

    .line 1499
    :cond_79
    const/4 v3, 0x4

    goto :goto_53
.end method

.method private postBackspaceRunnable(I)V
    .registers 6
    .param p1, "time"    # I

    .prologue
    .line 1504
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$32;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EmojiView$32;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1517
    return-void
.end method

.method private reloadStickersAdapter()V
    .registers 2

    .prologue
    .line 1997
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_9

    .line 1998
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    .line 2000
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->favStickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_12

    .line 2001
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->favStickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    .line 2003
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    if-eqz v0, :cond_1b

    .line 2004
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->notifyDataSetChanged()V

    .line 2006
    :cond_1b
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/StickerPreviewViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2007
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/StickerPreviewViewer;->close()V

    .line 2009
    :cond_2c
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/StickerPreviewViewer;->reset()V

    .line 2010
    return-void
.end method

.method private saveEmojiColors()V
    .registers 7

    .prologue
    .line 1534
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "emoji"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1535
    .local v1, "preferences":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1536
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v3, Lorg/telegram/ui/Components/EmojiView;->emojiColor:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1537
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_31

    .line 1538
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    :cond_31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1541
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 1544
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_49
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "color"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1545
    return-void
.end method

.method private saveFavEmoji()V
    .registers 7

    .prologue
    .line 1561
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1562
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1563
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_13
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->favEmojis:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_34

    .line 1564
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_26

    .line 1565
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    :cond_26
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->favEmojis:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1563
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1569
    :cond_34
    const-string v3, "fav_emoji"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1570
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1571
    return-void
.end method

.method private saveFavStickers()V
    .registers 7

    .prologue
    .line 1548
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "emoji"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1549
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1550
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_13
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->newFavStickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_32

    .line 1551
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_26

    .line 1552
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    :cond_26
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->newFavStickers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1550
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1556
    :cond_32
    const-string v3, "fav_stickers"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1557
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1558
    return-void
.end method

.method private saveNewPage()V
    .registers 5

    .prologue
    .line 1415
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z

    if-eqz v1, :cond_39

    const/4 v1, 0x7

    :goto_b
    if-eq v2, v1, :cond_3d

    .line 1416
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3b

    .line 1417
    const/4 v0, 0x2

    .line 1424
    .local v0, "newPage":I
    :goto_1a
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    if-eq v1, v0, :cond_38

    .line 1425
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    .line 1426
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "emoji"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "selected_page"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1428
    :cond_38
    return-void

    .line 1415
    .end local v0    # "newPage":I
    :cond_39
    const/4 v1, 0x6

    goto :goto_b

    .line 1419
    :cond_3b
    const/4 v0, 0x1

    .restart local v0    # "newPage":I
    goto :goto_1a

    .line 1422
    .end local v0    # "newPage":I
    :cond_3d
    const/4 v0, 0x0

    .restart local v0    # "newPage":I
    goto :goto_1a
.end method

.method private saveRecentEmoji()V
    .registers 7

    .prologue
    .line 1520
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "emoji"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1521
    .local v1, "preferences":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1522
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1523
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_31

    .line 1524
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    :cond_31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 1530
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_47
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "emojis2"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1531
    return-void
.end method

.method private showFavStickersTab()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 1458
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->favStickersWrap:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1459
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1460
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1461
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1462
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_20

    .line 1463
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1465
    :cond_20
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    add-int/lit8 v2, v0, 0x1

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v0, :cond_35

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    :goto_2c
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    .line 1466
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveNewPage()V

    .line 1467
    return-void

    .line 1465
    :cond_35
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_2c
.end method

.method private showGifTab()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 1449
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1450
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1451
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1452
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1453
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    add-int/lit8 v2, v0, 0x1

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v0, :cond_2c

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    :goto_23
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    .line 1454
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveNewPage()V

    .line 1455
    return-void

    .line 1453
    :cond_2c
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_23
.end method

.method private showTrendingTab()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 1440
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1441
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1442
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1443
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1444
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    add-int/lit8 v2, v0, 0x1

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v0, :cond_2c

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    :goto_23
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    .line 1445
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveNewPage()V

    .line 1446
    return-void

    .line 1444
    :cond_2c
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_23
.end method

.method private sortEmoji()V
    .registers 5

    .prologue
    .line 1583
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1584
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1585
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1587
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_25
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$33;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/EmojiView$33;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1606
    :goto_2f
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_47

    .line 1607
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2f

    .line 1609
    :cond_47
    return-void
.end method

.method private sortStickers()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1612
    invoke-static {v4}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1613
    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->showFavStickers:Z

    if-eqz v2, :cond_14

    .line 1614
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->favStickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1625
    :cond_14
    return-void

    .line 1616
    :cond_15
    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->showFavStickers:Z

    if-eqz v2, :cond_14

    .line 1617
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->favStickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1618
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1f
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->newFavStickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_14

    .line 1619
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->newFavStickers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/query/StickersQuery;->getStickerById(JI)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    .line 1620
    .local v1, "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v1, :cond_3e

    .line 1621
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->favStickers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1618
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f
.end method

.method private updateStickerTabs()V
    .registers 13

    .prologue
    const v11, 0x7f020182

    const/4 v8, -0x2

    const/4 v10, 0x0

    .line 1627
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v7, :cond_1c6

    .line 1629
    iput v8, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    .line 1630
    iput v8, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    .line 1631
    iput v8, p0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    .line 1632
    iput v8, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    .line 1633
    iput v10, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 1634
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getCurrentPosition()I

    move-result v2

    .line 1635
    .local v2, "lastPosition":I
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->removeTabs()V

    .line 1636
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02017b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1637
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const-string v7, "chat_emojiPanelIcon"

    invoke-static {v1, v7}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColorByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1638
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(Landroid/graphics/drawable/Drawable;)V

    .line 1639
    iget-boolean v7, p0, Lorg/telegram/ui/Components/EmojiView;->showGifs:Z

    if-eqz v7, :cond_66

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_66

    .line 1640
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02017f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1641
    const-string v7, "chat_emojiPanelIcon"

    invoke-static {v1, v7}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColorByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1642
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(Landroid/graphics/drawable/Drawable;)V

    .line 1643
    iget v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    iput v7, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    .line 1644
    iget v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 1646
    :cond_66
    iget-boolean v7, p0, Lorg/telegram/ui/Components/EmojiView;->showFavStickers:Z

    if-eqz v7, :cond_8d

    .line 1647
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02017e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1648
    const-string v7, "chat_emojiPanelIcon"

    invoke-static {v1, v7}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColorByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1649
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(Landroid/graphics/drawable/Drawable;)V

    .line 1650
    iget v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    iput v7, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    .line 1651
    iget v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 1653
    :cond_8d
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getUnreadStickerSets()Ljava/util/ArrayList;

    move-result-object v6

    .line 1654
    .local v6, "unread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    if-eqz v7, :cond_da

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->getItemCount()I

    move-result v7

    if-eqz v7, :cond_da

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_da

    .line 1655
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1656
    const-string v7, "chat_emojiPanelIcon"

    invoke-static {v1, v7}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColorByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1657
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTabWithCounter(Landroid/graphics/drawable/Drawable;)Landroid/widget/TextView;

    move-result-object v5

    .line 1658
    .local v5, "stickersCounter":Landroid/widget/TextView;
    iget v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    iput v7, p0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    .line 1659
    iget v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 1660
    const-string v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1662
    .end local v5    # "stickersCounter":Landroid/widget/TextView;
    :cond_da
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_105

    .line 1663
    iget v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    iput v7, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    .line 1664
    iget v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 1665
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02017a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1666
    const-string v7, "chat_emojiPanelIcon"

    invoke-static {v1, v7}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColorByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1667
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(Landroid/graphics/drawable/Drawable;)V

    .line 1669
    :cond_105
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1670
    invoke-static {v10}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1671
    .local v4, "packs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_10f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_135

    .line 1672
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1673
    .local v3, "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-nez v7, :cond_132

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v7, :cond_132

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_132

    .line 1674
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1671
    :cond_132
    add-int/lit8 v0, v0, 0x1

    goto :goto_10f

    .line 1677
    .end local v3    # "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_135
    const/4 v0, 0x0

    :goto_136
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_156

    .line 1678
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addStickerTab(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1677
    add-int/lit8 v0, v0, 0x1

    goto :goto_136

    .line 1680
    :cond_156
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    if-eqz v7, :cond_189

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->getItemCount()I

    move-result v7

    if-eqz v7, :cond_189

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_189

    .line 1681
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1682
    const-string v7, "chat_emojiPanelIcon"

    invoke-static {v1, v7}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColorByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1683
    iget v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    .line 1684
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(Landroid/graphics/drawable/Drawable;)V

    .line 1686
    :cond_189
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020181

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1687
    const-string v7, "chat_emojiPanelIcon"

    invoke-static {v1, v7}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColorByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1688
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(Landroid/graphics/drawable/Drawable;)V

    .line 1689
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->updateTabStyles()V

    .line 1690
    if-eqz v2, :cond_1ae

    .line 1691
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7, v2, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    .line 1693
    :cond_1ae
    iget-boolean v7, p0, Lorg/telegram/ui/Components/EmojiView;->switchToGifTab:Z

    if-eqz v7, :cond_1c3

    iget v7, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    if-ltz v7, :cond_1c3

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_1c3

    .line 1694
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->showGifTab()V

    .line 1695
    iput-boolean v10, p0, Lorg/telegram/ui/Components/EmojiView;->switchToGifTab:Z

    .line 1697
    :cond_1c3
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->checkPanels()V

    .line 1699
    .end local v0    # "a":I
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "lastPosition":I
    .end local v4    # "packs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v6    # "unread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1c6
    return-void
.end method

.method private updateVisibleTrendingSets()V
    .registers 17

    .prologue
    .line 2182
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    if-eqz v13, :cond_c1

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    if-eqz v13, :cond_c1

    .line 2184
    :try_start_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v5

    .line 2185
    .local v5, "count":I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_15
    if-ge v2, v5, :cond_c1

    .line 2186
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2187
    .local v4, "child":Landroid/view/View;
    instance-of v13, v4, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    if-eqz v13, :cond_9c

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz v13, :cond_9c

    .line 2188
    move-object v0, v4

    check-cast v0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    move-object v3, v0

    .line 2189
    .local v3, "cell":Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getUnreadStickerSets()Ljava/util/ArrayList;

    move-result-object v11

    .line 2190
    .local v11, "unreadStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->getStickerSet()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v9

    .line 2191
    .local v9, "stickerSetCovered":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    if-eqz v11, :cond_a0

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a0

    const/4 v10, 0x1

    .line 2192
    .local v10, "unread":Z
    :goto_4c
    invoke-virtual {v3, v9, v10}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Z)V

    .line 2193
    if-eqz v10, :cond_58

    .line 2194
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v14, v15}, Lorg/telegram/messenger/query/StickersQuery;->markFaturedStickersByIdAsRead(J)V

    .line 2196
    :cond_58
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Ljava/util/HashMap;

    iget-object v14, v9, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    .line 2197
    .local v7, "installing":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Ljava/util/HashMap;

    iget-object v14, v9, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    .line 2198
    .local v8, "removing":Z
    if-nez v7, :cond_7c

    if-eqz v8, :cond_94

    .line 2199
    :cond_7c
    if-eqz v7, :cond_a2

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled()Z

    move-result v13

    if-eqz v13, :cond_a2

    .line 2200
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Ljava/util/HashMap;

    iget-object v14, v9, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2201
    const/4 v7, 0x0

    .line 2209
    :cond_94
    :goto_94
    if-nez v7, :cond_98

    if-eqz v8, :cond_bb

    :cond_98
    const/4 v12, 0x1

    .line 2210
    .local v12, "z":Z
    :goto_99
    invoke-virtual {v3, v12}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setDrawProgress(Z)V

    .line 2185
    .end local v3    # "cell":Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;
    .end local v7    # "installing":Z
    .end local v8    # "removing":Z
    .end local v9    # "stickerSetCovered":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    .end local v10    # "unread":Z
    .end local v11    # "unreadStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v12    # "z":Z
    :cond_9c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_15

    .line 2191
    .restart local v3    # "cell":Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;
    .restart local v9    # "stickerSetCovered":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    .restart local v11    # "unreadStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_a0
    const/4 v10, 0x0

    goto :goto_4c

    .line 2202
    .restart local v7    # "installing":Z
    .restart local v8    # "removing":Z
    .restart local v10    # "unread":Z
    :cond_a2
    if-eqz v8, :cond_94

    .line 2203
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled()Z

    move-result v13

    if-nez v13, :cond_94

    .line 2204
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Ljava/util/HashMap;

    iget-object v14, v9, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b9
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_b9} :catch_bd

    .line 2205
    const/4 v8, 0x0

    goto :goto_94

    .line 2209
    :cond_bb
    const/4 v12, 0x0

    goto :goto_99

    .line 2213
    .end local v2    # "a":I
    .end local v3    # "cell":Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "count":I
    .end local v7    # "installing":Z
    .end local v8    # "removing":Z
    .end local v9    # "stickerSetCovered":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    .end local v10    # "unread":Z
    .end local v11    # "unreadStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_bd
    move-exception v6

    .line 2214
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2217
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_c1
    return-void
.end method


# virtual methods
.method public addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;)V
    .registers 4
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 1841
    if-nez p1, :cond_3

    .line 1852
    :cond_2
    :goto_2
    return-void

    .line 1844
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 1845
    .local v0, "wasEmpty":Z
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getRecentGifs()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    .line 1846
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    if-eqz v1, :cond_18

    .line 1847
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$GifsAdapter;->notifyDataSetChanged()V

    .line 1849
    :cond_18
    if-eqz v0, :cond_2

    .line 1850
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    goto :goto_2
.end method

.method public addRecentSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
    .registers 9
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/4 v6, 0x0

    .line 1760
    if-nez p1, :cond_4

    .line 1772
    :cond_3
    :goto_3
    return-void

    .line 1763
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-static {v6, p1, v1}, Lorg/telegram/messenger/query/StickersQuery;->addRecentSticker(ILorg/telegram/tgnet/TLRPC$Document;I)V

    .line 1764
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 1765
    .local v0, "wasEmpty":Z
    invoke-static {v6}, Lorg/telegram/messenger/query/StickersQuery;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    .line 1766
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v1, :cond_24

    .line 1767
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    .line 1769
    :cond_24
    if-eqz v0, :cond_3

    .line 1770
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    goto :goto_3
.end method

.method public clearFavEmoji()V
    .registers 3

    .prologue
    .line 2764
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->favEmojis:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2765
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveFavEmoji()V

    .line 2766
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 2767
    return-void
.end method

.method public clearFavStickers()V
    .registers 2

    .prologue
    .line 2770
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->newFavStickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2771
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->favStickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2772
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveFavStickers()V

    .line 2773
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->favStickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    .line 2774
    return-void
.end method

.method public clearRecentEmoji()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1431
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "emoji"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1432
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "filled_default"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1433
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1434
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1435
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveRecentEmoji()V

    .line 1436
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 1437
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 9
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 2222
    sget v3, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    if-ne p1, v3, :cond_2d

    .line 2223
    aget-object v3, p2, v5

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_26

    .line 2224
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    if-eqz v3, :cond_1a

    .line 2225
    iget-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView;->trendingLoaded:Z

    if-eqz v3, :cond_27

    .line 2226
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateVisibleTrendingSets()V

    .line 2231
    :cond_1a
    :goto_1a
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->sortStickers()V

    .line 2232
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    .line 2233
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    .line 2234
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->checkPanels()V

    .line 2263
    :cond_26
    :goto_26
    return-void

    .line 2228
    :cond_27
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->notifyDataSetChanged()V

    goto :goto_1a

    .line 2236
    :cond_2d
    sget v3, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoaded:I

    if-ne p1, v3, :cond_4a

    .line 2237
    aget-object v3, p2, v5

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2238
    .local v2, "isGif":Z
    if-nez v2, :cond_46

    const/4 v3, 0x1

    aget-object v3, p2, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_26

    .line 2239
    :cond_46
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->checkDocuments(Z)V

    goto :goto_26

    .line 2241
    .end local v2    # "isGif":Z
    :cond_4a
    sget v3, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    if-ne p1, v3, :cond_86

    .line 2242
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    if-eqz v3, :cond_63

    .line 2243
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->featuredStickersHash:I

    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getFeaturesStickersHashWithoutUnread()I

    move-result v4

    if-eq v3, v4, :cond_5c

    .line 2244
    iput-boolean v5, p0, Lorg/telegram/ui/Components/EmojiView;->trendingLoaded:Z

    .line 2246
    :cond_5c
    iget-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView;->trendingLoaded:Z

    if-eqz v3, :cond_7c

    .line 2247
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateVisibleTrendingSets()V

    .line 2252
    :cond_63
    :goto_63
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    if-eqz v3, :cond_82

    .line 2253
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->getChildCount()I

    move-result v1

    .line 2254
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_6e
    if-ge v0, v1, :cond_82

    .line 2255
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 2254
    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    .line 2249
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_7c
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->notifyDataSetChanged()V

    goto :goto_63

    .line 2258
    :cond_82
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    goto :goto_26

    .line 2260
    :cond_86
    sget v3, Lorg/telegram/messenger/NotificationCenter;->favEmojisStickersUpdated:I

    if-ne p1, v3, :cond_26

    .line 2261
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->loadFavorites()V

    goto :goto_26
.end method

.method public getCurrentPage()I
    .registers 2

    .prologue
    .line 2138
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    return v0
.end method

.method public haveFavEmoji(Ljava/lang/String;)Z
    .registers 4
    .param p1, "emoji"    # Ljava/lang/String;

    .prologue
    .line 1806
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->favEmojis:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public haveFavSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .registers 6
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 1802
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->newFavStickers:Ljava/util/ArrayList;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public invalidateViews()V
    .registers 3

    .prologue
    .line 2017
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGrids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 2018
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGrids:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->invalidateViews()V

    .line 2017
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2020
    :cond_17
    return-void
.end method

.method public loadFavorites()V
    .registers 13

    .prologue
    const/4 v8, 0x0

    .line 1810
    iget-boolean v7, p0, Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z

    if-eqz v7, :cond_3f

    .line 1811
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->favEmojis:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1812
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v9, "mainconfig"

    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v9, "fav_emoji"

    const-string v10, ""

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1813
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3f

    .line 1814
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v7, v8

    :goto_28
    if-ge v7, v10, :cond_34

    aget-object v1, v9, v7

    .line 1815
    .local v1, "arg":Ljava/lang/String;
    iget-object v11, p0, Lorg/telegram/ui/Components/EmojiView;->favEmojis:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1814
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    .line 1817
    .end local v1    # "arg":Ljava/lang/String;
    :cond_34
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 1820
    .end local v6    # "str":Ljava/lang/String;
    :cond_3f
    iget-boolean v7, p0, Lorg/telegram/ui/Components/EmojiView;->showFavStickers:Z

    if-eqz v7, :cond_9d

    .line 1821
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->newFavStickers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1822
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->favStickers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1823
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v9, "emoji"

    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v9, "fav_stickers"

    const-string v10, ""

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1824
    .local v2, "args":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_66
    array-length v7, v2

    if-ge v0, v7, :cond_98

    .line 1825
    aget-object v7, v2, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_95

    .line 1826
    aget-object v7, v2, v0

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1827
    .local v4, "id":J
    const-wide/16 v10, 0x0

    cmp-long v7, v4, v10

    if-eqz v7, :cond_95

    .line 1828
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->newFavStickers:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1829
    invoke-static {v4, v5, v8}, Lorg/telegram/messenger/query/StickersQuery;->getStickerById(JI)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    .line 1830
    .local v3, "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v3, :cond_95

    .line 1831
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->favStickers:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1824
    .end local v3    # "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v4    # "id":J
    :cond_95
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    .line 1836
    :cond_98
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->favStickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    .line 1838
    .end local v0    # "a":I
    .end local v2    # "args":[Ljava/lang/String;
    :cond_9d
    return-void
.end method

.method public loadRecents()V
    .registers 21

    .prologue
    .line 1855
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v16, "emoji"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 1859
    .local v10, "preferences":Landroid/content/SharedPreferences;
    :try_start_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    .line 1860
    const-string v13, "emojis"

    invoke-interface {v10, v13}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1b3

    .line 1861
    const-string v13, "emojis"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v10, v13, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1862
    .local v11, "str":Ljava/lang/String;
    if-eqz v11, :cond_a6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_a6

    .line 1863
    const-string v13, ","

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1864
    .local v4, "args":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_3b
    move/from16 v0, v16

    if-ge v13, v0, :cond_a6

    aget-object v3, v4, v13

    .line 1865
    .local v3, "arg":Ljava/lang/String;
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1866
    .local v5, "args2":[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v17, v5, v17

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1867
    .local v14, "value":J
    const-string v12, ""

    .line 1868
    .local v12, "string":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_58
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v2, v0, :cond_85

    .line 1869
    long-to-int v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v6, v0

    .line 1870
    .local v6, "ch":C
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1871
    const/16 v17, 0x10

    shr-long v14, v14, v17

    .line 1872
    const-wide/16 v18, 0x0

    cmp-long v17, v14, v18

    if-nez v17, :cond_a3

    .line 1876
    .end local v6    # "ch":C
    :cond_85
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_a0

    .line 1877
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v18, v5, v18

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1864
    :cond_a0
    add-int/lit8 v13, v13, 0x1

    goto :goto_3b

    .line 1868
    .restart local v6    # "ch":C
    :cond_a3
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 1881
    .end local v2    # "a":I
    .end local v3    # "arg":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v5    # "args2":[Ljava/lang/String;
    .end local v6    # "ch":C
    .end local v12    # "string":Ljava/lang/String;
    .end local v14    # "value":J
    :cond_a6
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v16, "emojis"

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1882
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->saveRecentEmoji()V

    .line 1893
    :cond_b8
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_20b

    .line 1894
    const-string v13, "filled_default"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v10, v13, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_20b

    .line 1895
    const/16 v13, 0x22

    new-array v9, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v16, "\ud83d\ude02"

    aput-object v16, v9, v13

    const/4 v13, 0x1

    const-string v16, "\ud83d\ude18"

    aput-object v16, v9, v13

    const/4 v13, 0x2

    const-string v16, "\u2764"

    aput-object v16, v9, v13

    const/4 v13, 0x3

    const-string v16, "\ud83d\ude0d"

    aput-object v16, v9, v13

    const/4 v13, 0x4

    const-string v16, "\ud83d\ude0a"

    aput-object v16, v9, v13

    const/4 v13, 0x5

    const-string v16, "\ud83d\ude01"

    aput-object v16, v9, v13

    const/4 v13, 0x6

    const-string v16, "\ud83d\udc4d"

    aput-object v16, v9, v13

    const/4 v13, 0x7

    const-string v16, "\u263a"

    aput-object v16, v9, v13

    const/16 v13, 0x8

    const-string v16, "\ud83d\ude14"

    aput-object v16, v9, v13

    const/16 v13, 0x9

    const-string v16, "\ud83d\ude04"

    aput-object v16, v9, v13

    const/16 v13, 0xa

    const-string v16, "\ud83d\ude2d"

    aput-object v16, v9, v13

    const/16 v13, 0xb

    const-string v16, "\ud83d\udc8b"

    aput-object v16, v9, v13

    const/16 v13, 0xc

    const-string v16, "\ud83d\ude12"

    aput-object v16, v9, v13

    const/16 v13, 0xd

    const-string v16, "\ud83d\ude33"

    aput-object v16, v9, v13

    const/16 v13, 0xe

    const-string v16, "\ud83d\ude1c"

    aput-object v16, v9, v13

    const/16 v13, 0xf

    const-string v16, "\ud83d\ude48"

    aput-object v16, v9, v13

    const/16 v13, 0x10

    const-string v16, "\ud83d\ude09"

    aput-object v16, v9, v13

    const/16 v13, 0x11

    const-string v16, "\ud83d\ude03"

    aput-object v16, v9, v13

    const/16 v13, 0x12

    const-string v16, "\ud83d\ude22"

    aput-object v16, v9, v13

    const/16 v13, 0x13

    const-string v16, "\ud83d\ude1d"

    aput-object v16, v9, v13

    const/16 v13, 0x14

    const-string v16, "\ud83d\ude31"

    aput-object v16, v9, v13

    const/16 v13, 0x15

    const-string v16, "\ud83d\ude21"

    aput-object v16, v9, v13

    const/16 v13, 0x16

    const-string v16, "\ud83d\ude0f"

    aput-object v16, v9, v13

    const/16 v13, 0x17

    const-string v16, "\ud83d\ude1e"

    aput-object v16, v9, v13

    const/16 v13, 0x18

    const-string v16, "\ud83d\ude05"

    aput-object v16, v9, v13

    const/16 v13, 0x19

    const-string v16, "\ud83d\ude1a"

    aput-object v16, v9, v13

    const/16 v13, 0x1a

    const-string v16, "\ud83d\ude4a"

    aput-object v16, v9, v13

    const/16 v13, 0x1b

    const-string v16, "\ud83d\ude0c"

    aput-object v16, v9, v13

    const/16 v13, 0x1c

    const-string v16, "\ud83d\ude00"

    aput-object v16, v9, v13

    const/16 v13, 0x1d

    const-string v16, "\ud83d\ude0b"

    aput-object v16, v9, v13

    const/16 v13, 0x1e

    const-string v16, "\ud83d\ude06"

    aput-object v16, v9, v13

    const/16 v13, 0x1f

    const-string v16, "\ud83d\udc4c"

    aput-object v16, v9, v13

    const/16 v13, 0x20

    const-string v16, "\ud83d\ude10"

    aput-object v16, v9, v13

    const/16 v13, 0x21

    const-string v16, "\ud83d\ude15"

    aput-object v16, v9, v13

    .line 1902
    .local v9, "newRecent":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_197
    array-length v13, v9

    if-ge v8, v13, :cond_1f5

    .line 1903
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    aget-object v16, v9, v8

    array-length v0, v9

    move/from16 v17, v0

    sub-int v17, v17, v8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1902
    add-int/lit8 v8, v8, 0x1

    goto :goto_197

    .line 1884
    .end local v8    # "i":I
    .end local v9    # "newRecent":[Ljava/lang/String;
    .end local v11    # "str":Ljava/lang/String;
    :cond_1b3
    const-string v13, "emojis2"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v10, v13, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1885
    .restart local v11    # "str":Ljava/lang/String;
    if-eqz v11, :cond_b8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_b8

    .line 1886
    const-string v13, ","

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1887
    .restart local v4    # "args":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_1cf
    move/from16 v0, v16

    if-ge v13, v0, :cond_b8

    aget-object v3, v4, v13

    .line 1888
    .restart local v3    # "arg":Ljava/lang/String;
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1889
    .restart local v5    # "args2":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v18, v5, v18

    const/16 v19, 0x1

    aget-object v19, v5, v19

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1887
    add-int/lit8 v13, v13, 0x1

    goto :goto_1cf

    .line 1905
    .end local v3    # "arg":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v5    # "args2":[Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v9    # "newRecent":[Ljava/lang/String;
    :cond_1f5
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v16, "filled_default"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1906
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->saveRecentEmoji()V

    .line 1909
    .end local v8    # "i":I
    .end local v9    # "newRecent":[Ljava/lang/String;
    :cond_20b
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->sortEmoji()V

    .line 1910
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z

    if-eqz v13, :cond_25e

    const/4 v13, 0x1

    :goto_21b
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V
    :try_end_226
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_226} :catch_260

    .line 1916
    .end local v11    # "str":Ljava/lang/String;
    :goto_226
    :try_start_226
    const-string v13, "color"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v10, v13, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1917
    .restart local v11    # "str":Ljava/lang/String;
    if-eqz v11, :cond_269

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_269

    .line 1918
    const-string v13, ","

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1919
    .restart local v4    # "args":[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2    # "a":I
    :goto_23f
    array-length v13, v4

    if-ge v2, v13, :cond_269

    .line 1920
    aget-object v3, v4, v2

    .line 1921
    .restart local v3    # "arg":Ljava/lang/String;
    const-string v13, "="

    invoke-virtual {v3, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1922
    .restart local v5    # "args2":[Ljava/lang/String;
    sget-object v13, Lorg/telegram/ui/Components/EmojiView;->emojiColor:Ljava/util/HashMap;

    const/16 v16, 0x0

    aget-object v16, v5, v16

    const/16 v17, 0x1

    aget-object v17, v5, v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25b
    .catch Ljava/lang/Exception; {:try_start_226 .. :try_end_25b} :catch_265

    .line 1919
    add-int/lit8 v2, v2, 0x1

    goto :goto_23f

    .line 1910
    .end local v2    # "a":I
    .end local v3    # "arg":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v5    # "args2":[Ljava/lang/String;
    :cond_25e
    const/4 v13, 0x0

    goto :goto_21b

    .line 1911
    .end local v11    # "str":Ljava/lang/String;
    :catch_260
    move-exception v7

    .line 1912
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_226

    .line 1925
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_265
    move-exception v7

    .line 1926
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1928
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_269
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 2082
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2083
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_33

    .line 2084
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 2085
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentImagesDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 2086
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 2087
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->favEmojisStickersUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 2089
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$34;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiView$34;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2097
    :cond_33
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 2142
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_28

    .line 2143
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 2144
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 2145
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 2146
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->favEmojisStickersUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 2149
    :cond_28
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 2153
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2154
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2155
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->dismiss()V

    .line 2157
    :cond_14
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1989
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastNotifyWidth:I

    sub-int v1, p4, p2

    if-eq v0, v1, :cond_d

    .line 1990
    sub-int v0, p4, p2

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastNotifyWidth:I

    .line 1991
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    .line 1993
    :cond_d
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1994
    return-void
.end method

.method public onMeasure(II)V
    .registers 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/16 v3, 0x15

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1940
    iput-boolean v7, p0, Lorg/telegram/ui/Components/EmojiView;->isLayout:Z

    .line 1941
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v2, :cond_ae

    .line 1942
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    if-eq v2, v7, :cond_4a

    .line 1943
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_29

    .line 1944
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->outlineProvider:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1945
    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/EmojiView;->setClipToOutline(Z)V

    .line 1946
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->setElevation(F)V

    .line 1948
    :cond_29
    const v2, 0x7f020258

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->setBackgroundResource(I)V

    .line 1949
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string v4, "chat_emojiPanelBackground"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1950
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1951
    iput v7, p0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    .line 1966
    :cond_4a
    :goto_4a
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1967
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x0

    .line 1968
    .local v1, "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1969
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v2, :cond_6b

    .line 1970
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1971
    .restart local v1    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v1, :cond_6b

    .line 1972
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1975
    :cond_6b
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->oldWidth:I

    if-eq v2, v3, :cond_9a

    .line 1976
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v2, :cond_91

    if-eqz v1, :cond_91

    .line 1977
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p0, v2, v3, v6}, Lorg/telegram/ui/Components/EmojiView;->onPageScrolled(III)V

    .line 1978
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1980
    :cond_91
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1981
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, p0, Lorg/telegram/ui/Components/EmojiView;->oldWidth:I

    .line 1983
    :cond_9a
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-super {p0, v2, v3}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1984
    iput-boolean v6, p0, Lorg/telegram/ui/Components/EmojiView;->isLayout:Z

    .line 1985
    return-void

    .line 1954
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    :cond_ae
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    if-eqz v2, :cond_4a

    .line 1955
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_c0

    .line 1956
    invoke-virtual {p0, v9}, Lorg/telegram/ui/Components/EmojiView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1957
    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/EmojiView;->setClipToOutline(Z)V

    .line 1958
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->setElevation(F)V

    .line 1960
    :cond_c0
    const-string v2, "chat_emojiPanelBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->setBackgroundColor(I)V

    .line 1961
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    const-string v3, "chat_emojiPanelBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1962
    iput v6, p0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    goto/16 :goto_4a
.end method

.method public onOpen(Z)V
    .registers 14
    .param p1, "forceEmoji"    # Z

    .prologue
    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v11, 0x1

    .line 2023
    const/4 v6, 0x1

    .line 2024
    .local v6, "z":Z
    const/4 v1, 0x7

    .line 2025
    .local v1, "i":I
    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-nez v9, :cond_a

    .line 2078
    :cond_9
    :goto_9
    return-void

    .line 2028
    :cond_a
    iget v9, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    if-eqz v9, :cond_10

    if-eqz p1, :cond_27

    .line 2029
    :cond_10
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 2030
    .local v0, "currentItem":I
    iget-boolean v7, p0, Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z

    if-nez v7, :cond_1b

    .line 2031
    const/4 v1, 0x6

    .line 2033
    :cond_1b
    if-ne v0, v1, :cond_9

    .line 2034
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    .line 2035
    .local v3, "viewPager":Landroid/support/v4/view/ViewPager;
    if-eqz p1, :cond_22

    .line 2036
    const/4 v6, 0x0

    .line 2038
    :cond_22
    const/4 v7, 0x0

    invoke-virtual {v3, v7, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_9

    .line 2040
    .end local v0    # "currentItem":I
    .end local v3    # "viewPager":Landroid/support/v4/view/ViewPager;
    :cond_27
    iget v9, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    if-ne v9, v11, :cond_73

    .line 2041
    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v9}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v9

    iget-boolean v10, p0, Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z

    if-eqz v10, :cond_5b

    :goto_35
    if-eq v9, v7, :cond_41

    .line 2043
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    .line 2044
    .local v4, "viewPager2":Landroid/support/v4/view/ViewPager;
    iget-boolean v7, p0, Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z

    if-eqz v7, :cond_5d

    .line 2045
    const/4 v2, 0x7

    .line 2049
    .local v2, "i2":I
    :goto_3e
    invoke-virtual {v4, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2051
    .end local v2    # "i2":I
    .end local v4    # "viewPager2":Landroid/support/v4/view/ViewPager;
    :cond_41
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getCurrentPosition()I

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    add-int/lit8 v8, v8, 0x1

    if-ne v7, v8, :cond_9

    .line 2054
    iget v7, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-ltz v7, :cond_5f

    .line 2055
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v8, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    goto :goto_9

    :cond_5b
    move v7, v8

    .line 2041
    goto :goto_35

    .line 2047
    .restart local v4    # "viewPager2":Landroid/support/v4/view/ViewPager;
    :cond_5d
    const/4 v2, 0x6

    .restart local v2    # "i2":I
    goto :goto_3e

    .line 2056
    .end local v2    # "i2":I
    .end local v4    # "viewPager2":Landroid/support/v4/view/ViewPager;
    :cond_5f
    iget v7, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    if-ltz v7, :cond_6d

    .line 2057
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v8, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    goto :goto_9

    .line 2059
    :cond_6d
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7, v11}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    goto :goto_9

    .line 2061
    :cond_73
    iget v9, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_9

    .line 2062
    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v9}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v9

    iget-boolean v10, p0, Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z

    if-eqz v10, :cond_aa

    :goto_82
    if-eq v9, v7, :cond_8e

    .line 2063
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    .line 2064
    .local v5, "viewPager3":Landroid/support/v4/view/ViewPager;
    iget-boolean v7, p0, Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z

    if-nez v7, :cond_8b

    .line 2065
    const/4 v1, 0x6

    .line 2067
    :cond_8b
    invoke-virtual {v5, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2069
    .end local v5    # "viewPager3":Landroid/support/v4/view/ViewPager;
    :cond_8e
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getCurrentPosition()I

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    add-int/lit8 v8, v8, 0x1

    if-eq v7, v8, :cond_9

    .line 2072
    iget v7, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    if-ltz v7, :cond_a6

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_ac

    .line 2073
    :cond_a6
    iput-boolean v11, p0, Lorg/telegram/ui/Components/EmojiView;->switchToGifTab:Z

    goto/16 :goto_9

    :cond_aa
    move v7, v8

    .line 2062
    goto :goto_82

    .line 2075
    :cond_ac
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v8, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    goto/16 :goto_9
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 1932
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->isLayout:Z

    if-eqz v0, :cond_5

    .line 1936
    :goto_4
    return-void

    .line 1935
    :cond_5
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_4
.end method

.method public setListener(Lorg/telegram/ui/Components/EmojiView$Listener;)V
    .registers 2
    .param p1, "value"    # Lorg/telegram/ui/Components/EmojiView$Listener;

    .prologue
    .line 2013
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    .line 2014
    return-void
.end method

.method public setVisibility(I)V
    .registers 8
    .param p1, "visibility"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2101
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2102
    const/16 v2, 0x8

    if-eq p1, v2, :cond_8d

    .line 2103
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->sortEmoji()V

    .line 2104
    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z

    if-eqz v2, :cond_1b

    .line 2105
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 2107
    :cond_1b
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z

    if-eqz v2, :cond_8e

    move v2, v3

    :goto_22
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 2108
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v2, :cond_76

    .line 2109
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    invoke-virtual {v2, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 2110
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoaded:I

    invoke-virtual {v2, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 2111
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/NotificationCenter;->favEmojisStickersUpdated:I

    invoke-virtual {v2, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 2112
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->sortStickers()V

    .line 2113
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    .line 2114
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    .line 2115
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_76

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_76

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    if-eqz v2, :cond_76

    .line 2117
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    .line 2118
    .local v0, "listener":Lorg/telegram/ui/Components/EmojiView$Listener;
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_72

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    const/4 v5, 0x6

    if-ge v2, v5, :cond_90

    .line 2119
    :cond_72
    const/4 v1, 0x0

    .line 2123
    .local v1, "z":Z
    :goto_73
    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/EmojiView$Listener;->onGifTab(Z)V

    .line 2126
    .end local v0    # "listener":Lorg/telegram/ui/Components/EmojiView$Listener;
    .end local v1    # "z":Z
    :cond_76
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    if-eqz v2, :cond_81

    .line 2127
    iput-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView;->trendingLoaded:Z

    .line 2128
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->notifyDataSetChanged()V

    .line 2130
    :cond_81
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->checkDocuments(Z)V

    .line 2131
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/EmojiView;->checkDocuments(Z)V

    .line 2132
    invoke-static {v4, v3, v3}, Lorg/telegram/messenger/query/StickersQuery;->loadRecents(IZZ)V

    .line 2133
    invoke-static {v4, v4, v3}, Lorg/telegram/messenger/query/StickersQuery;->loadRecents(IZZ)V

    .line 2135
    :cond_8d
    return-void

    :cond_8e
    move v2, v4

    .line 2107
    goto :goto_22

    .line 2121
    .restart local v0    # "listener":Lorg/telegram/ui/Components/EmojiView$Listener;
    :cond_90
    const/4 v1, 0x1

    .restart local v1    # "z":Z
    goto :goto_73
.end method

.method public switchToGifRecent()V
    .registers 3

    .prologue
    .line 1574
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    if-ltz v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1575
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    .line 1579
    :goto_15
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1580
    return-void

    .line 1577
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->switchToGifTab:Z

    goto :goto_15
.end method

.method public toggleFavEmoji(Ljava/lang/String;)V
    .registers 5
    .param p1, "emoji"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1791
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->favEmojis:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1792
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    .line 1793
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->favEmojis:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1797
    :goto_f
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveFavEmoji()V

    .line 1798
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 1799
    return-void

    .line 1795
    :cond_1e
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->favEmojis:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_f
.end method

.method public toggleFavSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
    .registers 7
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/4 v4, 0x0

    .line 1776
    if-eqz p1, :cond_2a

    .line 1777
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->newFavStickers:Ljava/util/ArrayList;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1778
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    .line 1779
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->newFavStickers:Ljava/util/ArrayList;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1780
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->favStickers:Ljava/util/ArrayList;

    invoke-virtual {v1, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1785
    :goto_22
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveFavStickers()V

    .line 1786
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->favStickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    .line 1788
    .end local v0    # "index":I
    :cond_2a
    return-void

    .line 1782
    .restart local v0    # "index":I
    :cond_2b
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->newFavStickers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1783
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->favStickers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_22
.end method

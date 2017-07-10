.class Lorg/telegram/ui/Components/EmojiView$23;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(ZZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 1054
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .registers 12
    .param p1, "page"    # I

    .prologue
    const/4 v9, 0x0

    const/16 v6, 0x8

    const/4 v8, 0x0

    .line 1056
    const/16 v2, 0x8

    .line 1057
    .local v2, "i":I
    const/4 v3, 0x0

    .line 1058
    .local v3, "i2":I
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$2900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    if-eqz v5, :cond_19

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$4800(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-eq p1, v5, :cond_13a

    .line 1059
    :cond_19
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$4900(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-ne p1, v5, :cond_49

    .line 1060
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$3000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_34

    .line 1061
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # invokes: Lorg/telegram/ui/Components/EmojiView;->showTrendingTab()V
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$5000(Lorg/telegram/ui/Components/EmojiView;)V

    .line 1104
    :cond_34
    :goto_34
    if-nez p1, :cond_157

    .line 1105
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1700(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    .line 1106
    .local v0, "access$1700":Landroid/support/v4/view/ViewPager;
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 1107
    const/4 v3, 0x1

    .line 1109
    :cond_45
    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1129
    .end local v0    # "access$1700":Landroid/support/v4/view/ViewPager;
    :cond_48
    :goto_48
    return-void

    .line 1063
    :cond_49
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->favStickersWrap:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$5100(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;

    move-result-object v5

    if-eqz v5, :cond_5b

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->favTabNum:I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$5200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-eq p1, v5, :cond_127

    .line 1065
    :cond_5b
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$2900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    if-eqz v5, :cond_ab

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$2900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_ab

    .line 1066
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v5

    invoke-interface {v5, v8}, Lorg/telegram/ui/Components/EmojiView$Listener;->onGifTab(Z)V

    .line 1067
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$2900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1068
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$2700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1069
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$5300(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/TextView;

    move-result-object v1

    .line 1070
    .local v1, "access$5500":Landroid/widget/TextView;
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getItemCount()I

    move-result v5

    if-nez v5, :cond_a0

    .line 1071
    const/4 v2, 0x0

    .line 1072
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1074
    :cond_a0
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # invokes: Lorg/telegram/ui/Components/EmojiView;->checkScroll()V
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$5400(Lorg/telegram/ui/Components/EmojiView;)V

    .line 1075
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # invokes: Lorg/telegram/ui/Components/EmojiView;->saveNewPage()V
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$5500(Lorg/telegram/ui/Components/EmojiView;)V

    goto :goto_34

    .line 1076
    .end local v1    # "access$5500":Landroid/widget/TextView;
    :cond_ab
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$3000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_e5

    .line 1077
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$3000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1078
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$2700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1079
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$5300(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/TextView;

    move-result-object v1

    .line 1080
    .restart local v1    # "access$5500":Landroid/widget/TextView;
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getItemCount()I

    move-result v5

    if-nez v5, :cond_de

    .line 1082
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1085
    :cond_de
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # invokes: Lorg/telegram/ui/Components/EmojiView;->saveNewPage()V
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$5500(Lorg/telegram/ui/Components/EmojiView;)V

    goto/16 :goto_34

    .line 1086
    .end local v1    # "access$5500":Landroid/widget/TextView;
    :cond_e5
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->favStickersWrap:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$5100(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;

    move-result-object v5

    if-eqz v5, :cond_34

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->favStickersWrap:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$5100(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_34

    .line 1087
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->favStickersWrap:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$5100(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1088
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$2700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1089
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$5300(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/TextView;

    move-result-object v1

    .line 1090
    .restart local v1    # "access$5500":Landroid/widget/TextView;
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getItemCount()I

    move-result v5

    if-nez v5, :cond_120

    .line 1092
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1095
    :cond_120
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # invokes: Lorg/telegram/ui/Components/EmojiView;->saveNewPage()V
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$5500(Lorg/telegram/ui/Components/EmojiView;)V

    goto/16 :goto_34

    .line 1097
    .end local v1    # "access$5500":Landroid/widget/TextView;
    :cond_127
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->favStickersWrap:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$5100(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_34

    .line 1098
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # invokes: Lorg/telegram/ui/Components/EmojiView;->showFavStickersTab()V
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$5600(Lorg/telegram/ui/Components/EmojiView;)V

    goto/16 :goto_34

    .line 1100
    :cond_13a
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$2900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_34

    .line 1101
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lorg/telegram/ui/Components/EmojiView$Listener;->onGifTab(Z)V

    .line 1102
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # invokes: Lorg/telegram/ui/Components/EmojiView;->showGifTab()V
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$5700(Lorg/telegram/ui/Components/EmojiView;)V

    goto/16 :goto_34

    .line 1110
    :cond_157
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$4800(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-eq p1, v5, :cond_48

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$4900(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-eq p1, v5, :cond_48

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->favTabNum:I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$5200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-eq p1, v5, :cond_48

    .line 1111
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$5800(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-ne p1, v5, :cond_1b7

    .line 1112
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/messenger/support/widget/GridLayoutManager;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1113
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # invokes: Lorg/telegram/ui/Components/EmojiView;->checkStickersTabY(Landroid/view/View;I)V
    invoke-static {v5, v9, v8}, Lorg/telegram/ui/Components/EmojiView;->access$3900(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;I)V

    .line 1114
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$4700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    move-result-object v6

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$5800(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v5

    add-int/lit8 v7, v5, 0x1

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$5800(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v5

    if-lez v5, :cond_1b0

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$5800(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v5

    :goto_1a9
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v7, v5}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto/16 :goto_48

    :cond_1b0
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$5900(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v5

    goto :goto_1a9

    .line 1117
    :cond_1b7
    add-int/lit8 v5, p1, -0x1

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I
    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$5900(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v6

    sub-int v4, v5, v6

    .line 1118
    .local v4, "index":I
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$6000(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_210

    .line 1119
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$6000(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_1e5

    .line 1120
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$6000(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 1122
    :cond_1e5
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/messenger/support/widget/GridLayoutManager;

    move-result-object v6

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v7

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$6000(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getPositionForPack(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1123
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # invokes: Lorg/telegram/ui/Components/EmojiView;->checkStickersTabY(Landroid/view/View;I)V
    invoke-static {v5, v9, v8}, Lorg/telegram/ui/Components/EmojiView;->access$3900(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;I)V

    .line 1124
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # invokes: Lorg/telegram/ui/Components/EmojiView;->checkScroll()V
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$5400(Lorg/telegram/ui/Components/EmojiView;)V

    goto/16 :goto_48

    .line 1125
    :cond_210
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v5

    if-eqz v5, :cond_48

    .line 1126
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v5

    invoke-interface {v5}, Lorg/telegram/ui/Components/EmojiView$Listener;->onStickersSettingsClick()V

    goto/16 :goto_48
.end method

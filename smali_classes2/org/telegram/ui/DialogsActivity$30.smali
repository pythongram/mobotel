.class Lorg/telegram/ui/DialogsActivity$30;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 1966
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lorg/telegram/messenger/support/widget/RecyclerView;I)V
    .registers 4
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 1969
    const/4 v0, 0x1

    if-ne p2, v0, :cond_20

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searching:Z
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchWas:Z
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2400(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1970
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1972
    :cond_20
    return-void
.end method

.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .registers 20
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 1976
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$5100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    .line 1977
    .local v3, "firstVisibleItem":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$5100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int/lit8 v10, v11, 0x1

    .line 1978
    .local v10, "visibleItemCount":I
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v9

    .line 1980
    .local v9, "totalItemCount":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searching:Z
    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$1500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v11

    if-eqz v11, :cond_67

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchWas:Z
    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$2400(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v11

    if-eqz v11, :cond_67

    .line 1981
    if-lez v10, :cond_66

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$5100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v11

    add-int/lit8 v12, v9, -0x1

    if-ne v11, v12, :cond_66

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isMessagesSearchEndReached()Z

    move-result v11

    if-nez v11, :cond_66

    .line 1982
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->loadMoreSearchMessages()V

    .line 2044
    :cond_66
    :goto_66
    return-void

    .line 1986
    :cond_67
    if-lez v10, :cond_a2

    .line 1987
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$5100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # invokes: Lorg/telegram/ui/DialogsActivity;->getDialogsArray()Ljava/util/ArrayList;
    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0xa

    if-lt v11, v12, :cond_a2

    .line 1988
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-boolean v11, v11, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    if-nez v11, :cond_158

    const/4 v4, 0x1

    .line 1989
    .local v4, "fromCache":Z
    :goto_8e
    if-nez v4, :cond_98

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-boolean v11, v11, Lorg/telegram/messenger/MessagesController;->serverDialogsEndReached:Z

    if-nez v11, :cond_a2

    .line 1990
    :cond_98
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    const/4 v12, -0x1

    const/16 v13, 0x64

    invoke-virtual {v11, v12, v13, v4}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIZ)V

    .line 1995
    .end local v4    # "fromCache":Z
    :cond_a2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;
    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/ImageView;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_111

    .line 1996
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1997
    .local v7, "topChild":Landroid/view/View;
    const/4 v2, 0x0

    .line 1998
    .local v2, "firstViewTop":I
    if-eqz v7, :cond_c0

    .line 1999
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v2

    .line 2002
    :cond_c0
    const/4 v1, 0x1

    .line 2003
    .local v1, "changed":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->prevPosition:I
    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$5200(Lorg/telegram/ui/DialogsActivity;)I

    move-result v11

    if-ne v11, v3, :cond_15f

    .line 2004
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->prevTop:I
    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$5300(Lorg/telegram/ui/DialogsActivity;)I

    move-result v11

    sub-int v8, v11, v2

    .line 2005
    .local v8, "topDelta":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->prevTop:I
    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$5300(Lorg/telegram/ui/DialogsActivity;)I

    move-result v11

    if-ge v2, v11, :cond_15b

    const/4 v5, 0x1

    .line 2006
    .local v5, "goingDown":Z
    :goto_e0
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_15d

    const/4 v1, 0x1

    .line 2010
    .end local v8    # "topDelta":I
    :goto_e8
    if-eqz v1, :cond_fb

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->scrollUpdated:Z
    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$5400(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v11

    if-eqz v11, :cond_fb

    .line 2011
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # invokes: Lorg/telegram/ui/DialogsActivity;->hideFloatingButton(Z)V
    invoke-static {v11, v5}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 2013
    :cond_fb
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # setter for: Lorg/telegram/ui/DialogsActivity;->prevPosition:I
    invoke-static {v11, v3}, Lorg/telegram/ui/DialogsActivity;->access$5202(Lorg/telegram/ui/DialogsActivity;I)I

    .line 2014
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # setter for: Lorg/telegram/ui/DialogsActivity;->prevTop:I
    invoke-static {v11, v2}, Lorg/telegram/ui/DialogsActivity;->access$5302(Lorg/telegram/ui/DialogsActivity;I)I

    .line 2015
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v12, 0x1

    # setter for: Lorg/telegram/ui/DialogsActivity;->scrollUpdated:Z
    invoke-static {v11, v12}, Lorg/telegram/ui/DialogsActivity;->access$5402(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 2019
    .end local v1    # "changed":Z
    .end local v2    # "firstViewTop":I
    .end local v5    # "goingDown":Z
    .end local v7    # "topChild":Landroid/view/View;
    :cond_111
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->hideTabs:Z
    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$1100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v11

    if-nez v11, :cond_1c3

    .line 2020
    const/4 v11, 0x1

    move/from16 v0, p3

    if-le v0, v11, :cond_13f

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    if-gez v11, :cond_13f

    .line 2021
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->disableAnimation:Z
    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$5500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v11

    if-eqz v11, :cond_16e

    .line 2022
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v12, 0x1

    # invokes: Lorg/telegram/ui/DialogsActivity;->hideFloatingButton(Z)V
    invoke-static {v11, v12}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 2027
    :cond_13f
    :goto_13f
    const/4 v11, -0x1

    move/from16 v0, p3

    if-ge v0, v11, :cond_66

    .line 2030
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->disableAnimation:Z
    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$5500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v11

    if-eqz v11, :cond_177

    .line 2031
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v12, 0x0

    # invokes: Lorg/telegram/ui/DialogsActivity;->hideFloatingButton(Z)V
    invoke-static {v11, v12}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;Z)V

    goto/16 :goto_66

    .line 1988
    :cond_158
    const/4 v4, 0x0

    goto/16 :goto_8e

    .line 2005
    .restart local v1    # "changed":Z
    .restart local v2    # "firstViewTop":I
    .restart local v7    # "topChild":Landroid/view/View;
    .restart local v8    # "topDelta":I
    :cond_15b
    const/4 v5, 0x0

    goto :goto_e0

    .line 2006
    .restart local v5    # "goingDown":Z
    :cond_15d
    const/4 v1, 0x0

    goto :goto_e8

    .line 2008
    .end local v5    # "goingDown":Z
    .end local v8    # "topDelta":I
    :cond_15f
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->prevPosition:I
    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$5200(Lorg/telegram/ui/DialogsActivity;)I

    move-result v11

    if-le v3, v11, :cond_16c

    const/4 v5, 0x1

    .restart local v5    # "goingDown":Z
    :goto_16a
    goto/16 :goto_e8

    .end local v5    # "goingDown":Z
    :cond_16c
    const/4 v5, 0x0

    goto :goto_16a

    .line 2024
    .end local v1    # "changed":Z
    .end local v2    # "firstViewTop":I
    .end local v7    # "topChild":Landroid/view/View;
    :cond_16e
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v12, 0x1

    # invokes: Lorg/telegram/ui/DialogsActivity;->hideTabsAnimated(Z)V
    invoke-static {v11, v12}, Lorg/telegram/ui/DialogsActivity;->access$5600(Lorg/telegram/ui/DialogsActivity;Z)V

    goto :goto_13f

    .line 2034
    :cond_177
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v12, 0x0

    # invokes: Lorg/telegram/ui/DialogsActivity;->hideTabsAnimated(Z)V
    invoke-static {v11, v12}, Lorg/telegram/ui/DialogsActivity;->access$5600(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 2035
    if-nez v3, :cond_66

    .line 2036
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;
    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "tabsToBottom"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 2038
    .local v6, "tabsToBottom":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v13

    const/4 v14, 0x0

    if-eqz v6, :cond_1b2

    const/4 v11, 0x0

    move v12, v11

    :goto_19d
    const/4 v15, 0x0

    if-eqz v6, :cond_1c1

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->tabsHeight:I
    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$5700(Lorg/telegram/ui/DialogsActivity;)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    :goto_1ad
    invoke-virtual {v13, v14, v12, v15, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    goto/16 :goto_66

    :cond_1b2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->tabsHeight:I
    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$5700(Lorg/telegram/ui/DialogsActivity;)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    move v12, v11

    goto :goto_19d

    :cond_1c1
    const/4 v11, 0x0

    goto :goto_1ad

    .line 2041
    .end local v6    # "tabsToBottom":Z
    :cond_1c3
    if-lez v10, :cond_66

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$5100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v11

    add-int/lit8 v12, v9, -0x1

    if-ne v11, v12, :cond_66

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isMessagesSearchEndReached()Z

    move-result v11

    if-nez v11, :cond_66

    .line 2042
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->loadMoreSearchMessages()V

    goto/16 :goto_66
.end method

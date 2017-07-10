.class Lorg/telegram/ui/DialogsActivity$19;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
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
    .line 1221
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public canCollapseSearch()Z
    .registers 2

    .prologue
    .line 1240
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1700(Lorg/telegram/ui/DialogsActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1241
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    .line 1242
    const/4 v0, 0x0

    .line 1244
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public onSearchCollapse()V
    .registers 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1249
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # setter for: Lorg/telegram/ui/DialogsActivity;->searching:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->access$1502(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 1250
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # setter for: Lorg/telegram/ui/DialogsActivity;->searchWas:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->access$2402(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 1251
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eqz v0, :cond_a0

    .line 1252
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 1253
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    if-eqz v0, :cond_b8

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 1254
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2000(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1255
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1260
    :goto_4a
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->onlySelect:Z
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 1261
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1262
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/DialogsActivity;->floatingHidden:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$2502(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 1263
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1264
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # invokes: Lorg/telegram/ui/DialogsActivity;->hideFloatingButton(Z)V
    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 1266
    :cond_76
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    if-eq v0, v1, :cond_a0

    .line 1267
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1268
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 1271
    :cond_a0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v0

    if-eqz v0, :cond_b2

    .line 1272
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchDialogs(Ljava/lang/String;)V

    .line 1274
    :cond_b2
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # invokes: Lorg/telegram/ui/DialogsActivity;->updatePasscodeButton()V
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2300(Lorg/telegram/ui/DialogsActivity;)V

    .line 1275
    return-void

    .line 1257
    :cond_b8
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 1258
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2000(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_4a
.end method

.method public onSearchExpand()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 1224
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/DialogsActivity;->searching:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$1502(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 1225
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 1226
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1700(Lorg/telegram/ui/DialogsActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 1227
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1228
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 1229
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2000(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1231
    :cond_39
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->onlySelect:Z
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 1232
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1235
    :cond_4a
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # invokes: Lorg/telegram/ui/DialogsActivity;->updatePasscodeButton()V
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2300(Lorg/telegram/ui/DialogsActivity;)V

    .line 1236
    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .registers 6
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    const/16 v3, 0x8

    .line 1279
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1280
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v1

    if-eqz v1, :cond_a0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->hasRecentRearch()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 1281
    :cond_24
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v2, 0x1

    # setter for: Lorg/telegram/ui/DialogsActivity;->searchWas:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$2402(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 1282
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v1

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v2

    if-eq v1, v2, :cond_5c

    .line 1283
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1284
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    .line 1286
    :cond_5c
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v1

    if-eqz v1, :cond_a0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v2

    if-eq v1, v2, :cond_a0

    .line 1287
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2000(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1288
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 1289
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 1290
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1293
    :cond_a0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v1

    if-eqz v1, :cond_b1

    .line 1294
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchDialogs(Ljava/lang/String;)V

    .line 1296
    :cond_b1
    return-void
.end method

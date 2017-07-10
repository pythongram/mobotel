.class public Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "FavoriteMessagesActivity.java"


# instance fields
.field context:Landroid/content/Context;

.field private listAdapter:Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;)Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->listAdapter:Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;

    return-object v0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 33
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->context:Landroid/content/Context;

    .line 34
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v4, 0x7f0200dd

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 35
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 36
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v4, "TurboFavoriteMessage"

    const v5, 0x7f070811

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$1;-><init>(Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 46
    new-instance v3, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->listAdapter:Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;

    .line 48
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->fragmentView:Landroid/view/View;

    .line 49
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->fragmentView:Landroid/view/View;

    check-cast v1, Landroid/widget/LinearLayout;

    .line 50
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "enableFMCheck":Lorg/telegram/ui/Cells/TextCheckCell;
    const-string v3, "EnableFavoriteMessage"

    const v4, 0x7f0706d6

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lorg/telegram/ui/Telehgram/Turbo;->favoriteMessages:Z

    invoke-virtual {v0, v3, v4, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 54
    new-instance v3, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$2;-><init>(Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const-string v3, "windowBackgroundWhite"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    .line 64
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 66
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 67
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {v4, p1, v2, v6}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 68
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 69
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_ae

    :goto_81
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollbarPosition(I)V

    .line 70
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->listAdapter:Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 73
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$3;-><init>(Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 88
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$4;-><init>(Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 123
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->fragmentView:Landroid/view/View;

    return-object v2

    .line 69
    :cond_ae
    const/4 v2, 0x2

    goto :goto_81
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 128
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->listAdapter:Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;->notifyDataSetChanged()V

    .line 130
    return-void
.end method

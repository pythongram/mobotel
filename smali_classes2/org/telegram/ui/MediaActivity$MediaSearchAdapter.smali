.class public Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/MediaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaSearchAdapter"
.end annotation


# instance fields
.field private currentType:I

.field protected globalSearch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private lastReqId:I

.field private mContext:Landroid/content/Context;

.field private reqId:I

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private searchTimer:Ljava/util/Timer;

.field final synthetic this$0:Lorg/telegram/ui/MediaActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;I)V
    .registers 5
    .param p1, "this$0"    # Lorg/telegram/ui/MediaActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "type"    # I

    .prologue
    .line 1851
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1844
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 1846
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    .line 1847
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    .line 1852
    iput-object p2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->mContext:Landroid/content/Context;

    .line 1853
    iput p3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    .line 1854
    return-void
.end method

.method static synthetic access$5200(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    .prologue
    .line 1842
    iget v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->lastReqId:I

    return v0
.end method

.method static synthetic access$5302(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 1842
    iput p1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    return p1
.end method

.method static synthetic access$5500(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)Ljava/util/Timer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    .prologue
    .line 1842
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$5502(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 1842
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$5600(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1842
    invoke-direct {p0, p1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->processSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    .prologue
    .line 1842
    iget v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    return v0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 1842
    invoke-direct {p0, p1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$5902(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 1842
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p1
.end method

.method private processSearch(Ljava/lang/String;)V
    .registers 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1946
    new-instance v0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;-><init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2027
    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2030
    .local p1, "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$4;-><init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2037
    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/messenger/MessageObject;
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 2066
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_11

    .line 2067
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 2069
    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    goto :goto_10
.end method

.method public getItemCount()I
    .registers 4

    .prologue
    .line 2046
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2047
    .local v0, "count":I
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2048
    .local v1, "globalCount":I
    if-eqz v1, :cond_f

    .line 2049
    add-int/2addr v0, v1

    .line 2051
    :cond_f
    return v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 2120
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 5
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 2041
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public isGlobalSearch(I)Z
    .registers 6
    .param p1, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 2055
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2056
    .local v1, "localCount":I
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2057
    .local v0, "globalCount":I
    if-ltz p1, :cond_12

    if-ge p1, v1, :cond_12

    .line 2062
    :cond_11
    :goto_11
    return v2

    .line 2059
    :cond_12
    if-le p1, v1, :cond_11

    add-int v3, v0, v1

    if-gt p1, v3, :cond_11

    .line 2060
    const/4 v2, 0x1

    goto :goto_11
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 15
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2097
    iget v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    if-eq v3, v4, :cond_b

    iget v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_6e

    .line 2098
    :cond_b
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 2099
    .local v1, "sharedDocumentCell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    invoke-virtual {p0, p2}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->getItem(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 2100
    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq p2, v3, :cond_5a

    move v3, v4

    :goto_1c
    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setDocument(Lorg/telegram/messenger/MessageObject;Z)V

    .line 2101
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$6100(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 2102
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dialog_id:J
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-nez v3, :cond_5c

    move v3, v5

    :goto_40
    aget-object v3, v6, v3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->scrolling:Z
    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$2900(Lorg/telegram/ui/MediaActivity;)Z

    move-result v6

    if-nez v6, :cond_5e

    :goto_56
    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    .line 2116
    .end local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v1    # "sharedDocumentCell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    :cond_59
    :goto_59
    return-void

    .restart local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .restart local v1    # "sharedDocumentCell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    :cond_5a
    move v3, v5

    .line 2100
    goto :goto_1c

    :cond_5c
    move v3, v4

    .line 2102
    goto :goto_40

    :cond_5e
    move v4, v5

    goto :goto_56

    .line 2104
    :cond_60
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->scrolling:Z
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$2900(Lorg/telegram/ui/MediaActivity;)Z

    move-result v3

    if-nez v3, :cond_6c

    :goto_68
    invoke-virtual {v1, v5, v4}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto :goto_59

    :cond_6c
    move v4, v5

    goto :goto_68

    .line 2106
    .end local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v1    # "sharedDocumentCell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    :cond_6e
    iget v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_59

    .line 2107
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/SharedLinkCell;

    .line 2108
    .local v2, "sharedLinkCell":Lorg/telegram/ui/Cells/SharedLinkCell;
    invoke-virtual {p0, p2}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->getItem(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 2109
    .restart local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq p2, v3, :cond_c2

    move v3, v4

    :goto_84
    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/Cells/SharedLinkCell;->setLink(Lorg/telegram/messenger/MessageObject;Z)V

    .line 2110
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$6200(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 2111
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dialog_id:J
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-nez v3, :cond_c4

    move v3, v5

    :goto_a8
    aget-object v3, v6, v3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->scrolling:Z
    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$2900(Lorg/telegram/ui/MediaActivity;)Z

    move-result v6

    if-nez v6, :cond_c6

    :goto_be
    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto :goto_59

    :cond_c2
    move v3, v5

    .line 2109
    goto :goto_84

    :cond_c4
    move v3, v4

    .line 2111
    goto :goto_a8

    :cond_c6
    move v4, v5

    goto :goto_be

    .line 2113
    :cond_c8
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->scrolling:Z
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$2900(Lorg/telegram/ui/MediaActivity;)Z

    move-result v3

    if-nez v3, :cond_d4

    :goto_d0
    invoke-virtual {v2, v5, v4}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto :goto_59

    :cond_d4
    move v4, v5

    goto :goto_d0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 2076
    iget v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    iget v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_17

    .line 2077
    :cond_a
    new-instance v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/SharedDocumentCell;-><init>(Landroid/content/Context;)V

    .line 2092
    .local v0, "view":Landroid/view/View;
    :goto_11
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 2079
    .end local v0    # "view":Landroid/view/View;
    :cond_17
    new-instance v0, Lorg/telegram/ui/Cells/SharedLinkCell;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/SharedLinkCell;-><init>(Landroid/content/Context;)V

    .restart local v0    # "view":Landroid/view/View;
    move-object v1, v0

    .line 2080
    check-cast v1, Lorg/telegram/ui/Cells/SharedLinkCell;

    new-instance v2, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$5;-><init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/SharedLinkCell;->setDelegate(Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;)V

    goto :goto_11
.end method

.method public queryServerSearch(Ljava/lang/String;IJ)V
    .registers 12
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "max_id"    # I
    .param p3, "did"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1857
    long-to-int v2, p3

    .line 1858
    .local v2, "uid":I
    if-nez v2, :cond_6

    .line 1915
    :cond_5
    :goto_5
    return-void

    .line 1861
    :cond_6
    iget v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    if-eqz v3, :cond_15

    .line 1862
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    invoke-virtual {v3, v4, v6}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1863
    iput v5, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    .line 1865
    :cond_15
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_28

    .line 1866
    :cond_1d
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1867
    iput v5, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->lastReqId:I

    .line 1868
    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->notifyDataSetChanged()V

    goto :goto_5

    .line 1871
    :cond_28
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 1872
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_search;
    iput v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset:I

    .line 1873
    const/16 v3, 0x32

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 1874
    iput p2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->max_id:I

    .line 1875
    iget v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    if-ne v3, v6, :cond_72

    .line 1876
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 1882
    :cond_40
    :goto_40
    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 1883
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1884
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v3, :cond_5

    .line 1887
    iget v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->lastReqId:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->lastReqId:I

    .line 1888
    .local v0, "currentReqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$1;

    invoke-direct {v4, p0, p2, v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$1;-><init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;II)V

    const/4 v5, 0x2

    invoke-virtual {v3, v1, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    .line 1914
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    iget-object v5, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->classGuid:I
    invoke-static {v5}, Lorg/telegram/ui/MediaActivity;->access$5400(Lorg/telegram/ui/MediaActivity;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_5

    .line 1877
    .end local v0    # "currentReqId":I
    :cond_72
    iget v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7f

    .line 1878
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_40

    .line 1879
    :cond_7f
    iget v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_40

    .line 1880
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_40
.end method

.method public search(Ljava/lang/String;)V
    .registers 9
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1919
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_9

    .line 1920
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_14

    .line 1925
    :cond_9
    :goto_9
    if-nez p1, :cond_19

    .line 1926
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1927
    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->notifyDataSetChanged()V

    .line 1943
    :goto_13
    return-void

    .line 1922
    :catch_14
    move-exception v6

    .line 1923
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 1929
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_19
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchTimer:Ljava/util/Timer;

    .line 1930
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$2;-><init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_13
.end method

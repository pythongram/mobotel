.class public Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ShareAlert2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Telehgram/ShareAlert2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareSearchAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private lastReqId:I

.field private lastSearchId:I

.field private lastSearchText:Ljava/lang/String;

.field private reqId:I

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private searchTimer:Ljava/util/Timer;

.field final synthetic this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Telehgram/ShareAlert2;Landroid/content/Context;)V
    .registers 5
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/ShareAlert2;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 604
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 593
    iput v1, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->reqId:I

    .line 595
    iput v1, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->lastSearchId:I

    .line 605
    iput-object p2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->context:Landroid/content/Context;

    .line 606
    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    .prologue
    .line 587
    iget v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->lastSearchId:I

    return v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 587
    iput p1, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->lastSearchId:I

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;Ljava/util/ArrayList;I)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I

    .prologue
    .line 587
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    .prologue
    .line 587
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 587
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;)Ljava/util/Timer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    .prologue
    .line 587
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 587
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 587
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->searchDialogsInternal(Ljava/lang/String;I)V

    return-void
.end method

.method private searchDialogsInternal(Ljava/lang/String;I)V
    .registers 5
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "searchId"    # I

    .prologue
    .line 609
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$1;-><init>(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 809
    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;I)V
    .registers 4
    .param p2, "searchId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 812
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;>;"
    new-instance v0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$2;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$2;-><init>(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;ILjava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 841
    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 885
    if-ltz p1, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    .line 886
    :cond_a
    const/4 v0, 0x0

    .line 888
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    goto :goto_b
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 881
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 893
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 917
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 898
    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 9
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 910
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/ShareDialogCell;

    .line 911
    .local v0, "cell":Lorg/telegram/ui/Cells/ShareDialogCell;
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;

    .line 912
    .local v1, "result":Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;
    iget-object v2, v1, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->selectedDialogs:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1200(Lorg/telegram/ui/Telehgram/ShareAlert2;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Cells/ShareDialogCell;->setDialog(IZLjava/lang/CharSequence;)V

    .line 913
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 903
    new-instance v0, Lorg/telegram/ui/Cells/ShareDialogCell;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShareDialogCell;-><init>(Landroid/content/Context;)V

    .line 904
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 905
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public searchDialogs(Ljava/lang/String;)V
    .registers 10
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 844
    if-eqz p1, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->lastSearchText:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->lastSearchText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 877
    :goto_e
    return-void

    .line 847
    :cond_f
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->lastSearchText:Ljava/lang/String;

    .line 849
    :try_start_11
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->searchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1d

    .line 850
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->searchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 851
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->searchTimer:Ljava/util/Timer;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1d} :catch_39

    .line 856
    :cond_1d
    :goto_1d
    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3e

    .line 857
    :cond_25
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 858
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # invokes: Lorg/telegram/ui/Telehgram/ShareAlert2;->getCurrentTop()I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1600(Lorg/telegram/ui/Telehgram/ShareAlert2;)I

    move-result v1

    # setter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->topBeforeSwitch:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1502(Lorg/telegram/ui/Telehgram/ShareAlert2;I)I

    .line 859
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->notifyDataSetChanged()V

    goto :goto_e

    .line 853
    :catch_39
    move-exception v6

    .line 854
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1d

    .line 861
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3e
    iget v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->lastSearchId:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->lastSearchId:I

    .line 862
    .local v7, "searchId":I
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->searchTimer:Ljava/util/Timer;

    .line 863
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->searchTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$3;

    invoke-direct {v1, p0, p1, v7}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$3;-><init>(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;Ljava/lang/String;I)V

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_e
.end method

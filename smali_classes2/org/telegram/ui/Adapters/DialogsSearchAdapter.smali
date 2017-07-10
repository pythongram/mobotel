.class public Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "DialogsSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;,
        Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;,
        Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;,
        Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

.field private dialogsType:I

.field private innerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private lastMessagesSearchString:Ljava/lang/String;

.field private lastReqId:I

.field private lastSearchId:I

.field private lastSearchText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private messagesSearchEndReached:Z

.field private needMessagesSearch:I

.field private recentSearchObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;",
            ">;"
        }
    .end annotation
.end field

.field private recentSearchObjectsById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;",
            ">;"
        }
    .end annotation
.end field

.field private reqId:I

.field private searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultHashtags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private searchTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messagesSearch"    # I
    .param p3, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    .line 69
    iput v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    .line 75
    iput v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Ljava/util/HashMap;

    .line 155
    new-instance v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-direct {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .line 156
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    new-instance v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V

    .line 173
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    .line 174
    iput p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    .line 175
    iput p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    .line 176
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->loadRecentSearch()V

    .line 180
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->loadHints()V

    .line 181
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .registers 5
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/Timer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchDialogsInternal(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Lorg/telegram/ui/Adapters/SearchAdapterHelper;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchMessagesInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastReqId:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesSearchEndReached:Z

    return p1
.end method

.method static synthetic access$602(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/HashMap;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->setRecentSearch(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    return v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    return p1
.end method

.method private searchDialogsInternal(Ljava/lang/String;I)V
    .registers 5
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "searchId"    # I

    .prologue
    .line 534
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 830
    :goto_5
    return-void

    .line 537
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_5
.end method

.method private searchMessagesInternal(Ljava/lang/String;)V
    .registers 10
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 235
    iget v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    if-eqz v4, :cond_12

    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1b

    :cond_12
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1b

    .line 325
    :cond_1a
    :goto_1a
    return-void

    .line 238
    :cond_1b
    iget v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    if-eqz v4, :cond_2a

    .line 239
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    invoke-virtual {v4, v5, v7}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 240
    iput v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    .line 242
    :cond_2a
    if-eqz p1, :cond_32

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_49

    .line 243
    :cond_32
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 244
    iput v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastReqId:I

    .line 245
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    .line 246
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    .line 247
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v4, :cond_1a

    .line 248
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {v4, v6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(Z)V

    goto :goto_1a

    .line 253
    :cond_49
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;-><init>()V

    .line 254
    .local v3, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;
    const/16 v4, 0x14

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->limit:I

    .line 255
    iput-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->q:Ljava/lang/String;

    .line 256
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    if-eqz v4, :cond_d3

    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d3

    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d3

    .line 257
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 258
    .local v2, "lastMessage":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    .line 259
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_date:I

    .line 261
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_bc

    .line 262
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v1, v4

    .line 268
    .local v1, "id":I
    :goto_93
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 274
    .end local v1    # "id":I
    .end local v2    # "lastMessage":Lorg/telegram/messenger/MessageObject;
    :goto_99
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    .line 275
    iget v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastReqId:I

    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastReqId:I

    .line 276
    .local v0, "currentReqId":I
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v4, :cond_aa

    .line 277
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {v4, v7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(Z)V

    .line 279
    :cond_aa
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    invoke-direct {v5, p0, v0, v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;)V

    const/4 v6, 0x2

    invoke-virtual {v4, v3, v5, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    goto/16 :goto_1a

    .line 263
    .end local v0    # "currentReqId":I
    .restart local v2    # "lastMessage":Lorg/telegram/messenger/MessageObject;
    :cond_bc
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v4, :cond_cc

    .line 264
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v1, v4

    .restart local v1    # "id":I
    goto :goto_93

    .line 266
    .end local v1    # "id":I
    :cond_cc
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .restart local v1    # "id":I
    goto :goto_93

    .line 270
    .end local v1    # "id":I
    .end local v2    # "lastMessage":Lorg/telegram/messenger/MessageObject;
    :cond_d3
    iput v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_date:I

    .line 271
    iput v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    .line 272
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_99
.end method

.method private setRecentSearch(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;>;"
    .local p2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;>;"
    const/4 v4, 0x1

    .line 518
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    .line 519
    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Ljava/util/HashMap;

    .line 520
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_6
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4e

    .line 521
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    .line 522
    .local v1, "recentSearchObject":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;
    iget-object v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_2a

    .line 523
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v3, v2, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 520
    :cond_27
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 524
    :cond_2a
    iget-object v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_3c

    .line 525
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v3, v2, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto :goto_27

    .line 526
    :cond_3c
    iget-object v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_27

    .line 527
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-virtual {v3, v2, v4}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    goto :goto_27

    .line 530
    .end local v1    # "recentSearchObject":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;
    :cond_4e
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    .line 531
    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .registers 11
    .param p4, "searchId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 833
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    .local p2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .local p3, "encUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 872
    return-void
.end method


# virtual methods
.method public addHashtagsFromMessage(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 514
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->addHashtagsFromMessage(Ljava/lang/CharSequence;)V

    .line 515
    return-void
.end method

.method public clearRecentHashtags()V
    .registers 2

    .prologue
    .line 879
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clearRecentHashtags()V

    .line 880
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 881
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    .line 882
    return-void
.end method

.method public clearRecentSearch()V
    .registers 3

    .prologue
    .line 498
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Ljava/util/HashMap;

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    .line 500
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    .line 501
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$5;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 511
    return-void
.end method

.method public getInnerListView()Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 12
    .param p1, "i"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 978
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v9

    if-eqz v9, :cond_5f

    .line 979
    sget-object v9, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_44

    const/4 v6, 0x2

    .line 980
    .local v6, "offset":I
    :goto_11
    if-le p1, v6, :cond_43

    add-int/lit8 v8, p1, -0x1

    sub-int/2addr v8, v6

    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_43

    .line 981
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    add-int/lit8 v9, p1, -0x1

    sub-int/2addr v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    iget-object v5, v8, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    .line 982
    .local v5, "object":Lorg/telegram/tgnet/TLObject;
    instance-of v8, v5, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v8, :cond_46

    .line 983
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    move-object v8, v5

    check-cast v8, Lorg/telegram/tgnet/TLRPC$User;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    .line 984
    .local v7, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v7, :cond_43

    .line 985
    move-object v5, v7

    .line 1016
    .end local v5    # "object":Lorg/telegram/tgnet/TLObject;
    .end local v6    # "offset":I
    .end local v7    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_43
    :goto_43
    return-object v5

    :cond_44
    move v6, v8

    .line 979
    goto :goto_11

    .line 987
    .restart local v5    # "object":Lorg/telegram/tgnet/TLObject;
    .restart local v6    # "offset":I
    :cond_46
    instance-of v8, v5, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v8, :cond_43

    .line 988
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    move-object v8, v5

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 989
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :cond_43

    .line 990
    move-object v5, v0

    goto :goto_43

    .line 998
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v5    # "object":Lorg/telegram/tgnet/TLObject;
    .end local v6    # "offset":I
    :cond_5f
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_72

    .line 999
    if-lez p1, :cond_43

    .line 1000
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_43

    .line 1005
    :cond_72
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v9}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v2

    .line 1006
    .local v2, "globalSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1007
    .local v3, "localCount":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_99

    move v1, v8

    .line 1008
    .local v1, "globalCount":I
    :goto_85
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a0

    move v4, v8

    .line 1009
    .local v4, "messagesCount":I
    :goto_8e
    if-ltz p1, :cond_a9

    if-ge p1, v3, :cond_a9

    .line 1010
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_43

    .line 1007
    .end local v1    # "globalCount":I
    .end local v4    # "messagesCount":I
    :cond_99
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v1, v9, 0x1

    goto :goto_85

    .line 1008
    .restart local v1    # "globalCount":I
    :cond_a0
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v4, v8, 0x1

    goto :goto_8e

    .line 1011
    .restart local v4    # "messagesCount":I
    :cond_a9
    if-le p1, v3, :cond_b8

    add-int v8, v1, v3

    if-ge p1, v8, :cond_b8

    .line 1012
    sub-int v8, p1, v3

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_43

    .line 1013
    :cond_b8
    add-int v8, v1, v3

    if-le p1, v8, :cond_43

    add-int v8, v1, v3

    add-int/2addr v8, v4

    if-ge p1, v8, :cond_43

    .line 1014
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    sub-int v9, p1, v3

    sub-int/2addr v9, v1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_43
.end method

.method public getItemCount()I
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 959
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 960
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    :goto_17
    sget-object v5, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_20

    const/4 v4, 0x2

    :cond_20
    add-int v0, v3, v4

    .line 974
    :cond_22
    :goto_22
    return v0

    :cond_23
    move v3, v4

    .line 960
    goto :goto_17

    .line 962
    :cond_25
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_36

    .line 963
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    goto :goto_22

    .line 965
    :cond_36
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 966
    .local v0, "count":I
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 967
    .local v1, "globalCount":I
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 968
    .local v2, "messagesCount":I
    if-eqz v1, :cond_51

    .line 969
    add-int/lit8 v3, v1, 0x1

    add-int/2addr v0, v3

    .line 971
    :cond_51
    if-eqz v2, :cond_22

    .line 972
    add-int/lit8 v3, v2, 0x1

    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesSearchEndReached:Z

    if-eqz v5, :cond_5c

    :goto_59
    add-int/2addr v3, v4

    add-int/2addr v0, v3

    goto :goto_22

    :cond_5c
    const/4 v4, 0x1

    goto :goto_59
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 1021
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 11
    .param p1, "i"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1207
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v8

    if-eqz v8, :cond_21

    .line 1208
    sget-object v8, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1b

    move v4, v7

    .line 1209
    .local v4, "offset":I
    :goto_12
    if-gt p1, v4, :cond_1f

    .line 1210
    if-eq p1, v4, :cond_1a

    rem-int/lit8 v6, p1, 0x2

    if-nez v6, :cond_1d

    .line 1232
    .end local v4    # "offset":I
    :cond_1a
    :goto_1a
    return v5

    :cond_1b
    move v4, v6

    .line 1208
    goto :goto_12

    .line 1213
    .restart local v4    # "offset":I
    :cond_1d
    const/4 v5, 0x5

    goto :goto_1a

    :cond_1f
    move v5, v6

    .line 1216
    goto :goto_1a

    .line 1218
    .end local v4    # "offset":I
    :cond_21
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2d

    .line 1219
    if-eqz p1, :cond_1a

    const/4 v5, 0x4

    goto :goto_1a

    .line 1221
    :cond_2d
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v8}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v1

    .line 1222
    .local v1, "globalSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1223
    .local v2, "localCount":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_55

    move v0, v6

    .line 1224
    .local v0, "globalCount":I
    :goto_40
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5c

    move v3, v6

    .line 1225
    .local v3, "messagesCount":I
    :goto_49
    if-ltz p1, :cond_4d

    if-lt p1, v2, :cond_53

    :cond_4d
    if-le p1, v2, :cond_65

    add-int v8, v0, v2

    if-ge p1, v8, :cond_65

    :cond_53
    move v5, v6

    .line 1226
    goto :goto_1a

    .line 1223
    .end local v0    # "globalCount":I
    .end local v3    # "messagesCount":I
    :cond_55
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v0, v8, 0x1

    goto :goto_40

    .line 1224
    .restart local v0    # "globalCount":I
    :cond_5c
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, 0x1

    goto :goto_49

    .line 1227
    .restart local v3    # "messagesCount":I
    :cond_65
    add-int v6, v0, v2

    if-le p1, v6, :cond_70

    add-int v6, v0, v2

    add-int/2addr v6, v3

    if-ge p1, v6, :cond_70

    move v5, v7

    .line 1228
    goto :goto_1a

    .line 1229
    :cond_70
    if-eqz v3, :cond_1a

    add-int v6, v0, v2

    add-int/2addr v6, v3

    if-ne p1, v6, :cond_1a

    .line 1230
    const/4 v5, 0x3

    goto :goto_1a
.end method

.method public getLastSearchString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    return-object v0
.end method

.method public hasRecentRearch()Z
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 5
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v1, 0x1

    .line 1026
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 1027
    .local v0, "type":I
    if-eq v0, v1, :cond_b

    const/4 v2, 0x3

    if-eq v0, v2, :cond_b

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isGlobalSearch(I)Z
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 875
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public isMessagesSearchEndReached()Z
    .registers 2

    .prologue
    .line 223
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesSearchEndReached:Z

    return v0
.end method

.method public isRecentSearchDisplayed()Z
    .registers 3

    .prologue
    .line 332
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchText:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_23

    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    :cond_21
    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public loadHints()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 185
    const/4 v7, 0x1

    invoke-static {v7}, Lorg/telegram/messenger/query/SearchQuery;->loadHints(Z)V

    .line 187
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v8, "mainconfig"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 188
    .local v6, "preferences":Landroid/content/SharedPreferences;
    const-string v7, "chat_unlocked"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 189
    .local v1, "chatUnlocked":Z
    const/4 v0, 0x0

    .local v0, "b":I
    :goto_14
    sget-object v7, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_a0

    .line 190
    sget-object v7, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    .line 191
    .local v5, "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    const/4 v4, 0x0

    .line 192
    .local v4, "did":I
    const-wide/16 v2, 0x0

    .line 193
    .local v2, "dialog_id":J
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v7, :cond_7c

    .line 194
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 206
    :cond_31
    :goto_31
    if-nez v1, :cond_55

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hide_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 207
    sget-object v7, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 208
    :cond_55
    if-nez v1, :cond_79

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hide_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_79

    .line 209
    sget-object v7, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 189
    :cond_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 195
    :cond_7c
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v7, :cond_94

    .line 196
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v7

    .line 197
    if-lez v4, :cond_8f

    .line 198
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v7

    goto :goto_31

    .line 200
    :cond_8f
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->makeBroadcastId(I)J

    move-result-wide v2

    goto :goto_31

    .line 202
    :cond_94
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v7, :cond_31

    .line 203
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v7

    goto :goto_31

    .line 212
    .end local v2    # "dialog_id":J
    .end local v4    # "did":I
    .end local v5    # "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    :cond_a0
    return-void
.end method

.method public loadMoreSearchMessages()V
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchMessagesInternal(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public loadRecentSearch()V
    .registers 3

    .prologue
    .line 336
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 463
    return-void
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 30
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 1102
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    packed-switch v5, :pswitch_data_2a8

    .line 1203
    :goto_7
    :pswitch_7
    return-void

    .line 1104
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 1106
    .local v4, "cell":Lorg/telegram/ui/Cells/ProfileSearchCell;
    const/16 v21, 0x0

    .line 1107
    .local v21, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v10, 0x0

    .line 1108
    .local v10, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    const/4 v6, 0x0

    .line 1109
    .local v6, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    const/4 v8, 0x0

    .line 1110
    .local v8, "username":Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 1111
    .local v7, "name":Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .line 1112
    .local v9, "isRecent":Z
    const/16 v20, 0x0

    .line 1113
    .local v20, "un":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v17

    .line 1115
    .local v17, "obj":Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_4b

    move-object/from16 v21, v17

    .line 1116
    check-cast v21, Lorg/telegram/tgnet/TLRPC$User;

    .line 1117
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 1129
    .end local v17    # "obj":Ljava/lang/Object;
    :cond_2f
    :goto_2f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 1130
    const/4 v9, 0x1

    .line 1131
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, p2

    if-eq v0, v5, :cond_9f

    const/4 v5, 0x1

    :goto_41
    iput-boolean v5, v4, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    .line 1160
    :cond_43
    :goto_43
    if-eqz v21, :cond_18c

    move-object/from16 v5, v21

    :goto_47
    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_7

    .line 1118
    .restart local v17    # "obj":Ljava/lang/Object;
    :cond_4b
    move-object/from16 v0, v17

    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_70

    .line 1119
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v5, v17

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    .line 1120
    if-nez v10, :cond_6b

    move-object/from16 v10, v17

    .line 1121
    check-cast v10, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1123
    :cond_6b
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    move-object/from16 v20, v0

    goto :goto_2f

    .line 1124
    :cond_70
    move-object/from16 v0, v17

    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v5, :cond_2f

    .line 1125
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    check-cast v17, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .end local v17    # "obj":Ljava/lang/Object;
    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v6

    .line 1126
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v0, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v21

    goto :goto_2f

    .line 1131
    :cond_9f
    const/4 v5, 0x0

    goto :goto_41

    .line 1133
    :cond_a1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v14

    .line 1134
    .local v14, "globalSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1135
    .local v15, "localCount":I
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_128

    const/4 v13, 0x0

    .line 1136
    .local v13, "globalCount":I
    :goto_b8
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, p2

    if-eq v0, v5, :cond_12f

    add-int/lit8 v5, v15, -0x1

    move/from16 v0, p2

    if-eq v0, v5, :cond_12f

    add-int v5, v15, v13

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, p2

    if-eq v0, v5, :cond_12f

    const/4 v5, 0x1

    :goto_d1
    iput-boolean v5, v4, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    .line 1138
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, p2

    if-ge v0, v5, :cond_131

    .line 1139
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "name":Ljava/lang/CharSequence;
    check-cast v7, Ljava/lang/CharSequence;

    .line 1140
    .restart local v7    # "name":Ljava/lang/CharSequence;
    if-eqz v7, :cond_43

    if-eqz v21, :cond_43

    move-object/from16 v0, v21

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v5, :cond_43

    move-object/from16 v0, v21

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_43

    .line 1141
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "@"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 1142
    move-object v8, v7

    .line 1143
    const/4 v7, 0x0

    goto/16 :goto_43

    .line 1135
    .end local v13    # "globalCount":I
    :cond_128
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v13, v5, 0x1

    goto :goto_b8

    .line 1136
    .restart local v13    # "globalCount":I
    :cond_12f
    const/4 v5, 0x0

    goto :goto_d1

    .line 1146
    :cond_131
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, p2

    if-le v0, v5, :cond_43

    if-eqz v20, :cond_43

    .line 1147
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundUsername()Ljava/lang/String;

    move-result-object v12

    .line 1148
    .local v12, "foundUserName":Ljava/lang/String;
    const-string v5, "@"

    invoke-virtual {v12, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_154

    .line 1149
    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 1152
    :cond_154
    :try_start_154
    new-instance v22, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_15d} :catch_184

    .line 1153
    .end local v8    # "username":Ljava/lang/CharSequence;
    .local v22, "username":Ljava/lang/CharSequence;
    :try_start_15d
    move-object/from16 v0, v22

    check-cast v0, Landroid/text/SpannableStringBuilder;

    move-object v5, v0

    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const-string v24, "windowBackgroundWhiteBlueText4"

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v24

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v24, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x21

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_180} :catch_2a2

    move-object/from16 v8, v22

    .line 1157
    .end local v22    # "username":Ljava/lang/CharSequence;
    .restart local v8    # "username":Ljava/lang/CharSequence;
    goto/16 :goto_43

    .line 1154
    :catch_184
    move-exception v11

    .line 1155
    .local v11, "e":Ljava/lang/Exception;
    :goto_185
    move-object/from16 v8, v20

    .line 1156
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "foundUserName":Ljava/lang/String;
    .end local v13    # "globalCount":I
    .end local v14    # "globalSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    .end local v15    # "localCount":I
    :cond_18c
    move-object v5, v10

    .line 1160
    goto/16 :goto_47

    .line 1164
    .end local v4    # "cell":Lorg/telegram/ui/Cells/ProfileSearchCell;
    .end local v6    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v7    # "name":Ljava/lang/CharSequence;
    .end local v8    # "username":Ljava/lang/CharSequence;
    .end local v9    # "isRecent":Z
    .end local v10    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v20    # "un":Ljava/lang/String;
    .end local v21    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :pswitch_18f
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/GraySectionCell;

    .line 1165
    .local v4, "cell":Lorg/telegram/ui/Cells/GraySectionCell;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v5

    if-eqz v5, :cond_1d6

    .line 1166
    sget-object v5, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1bf

    const/16 v18, 0x2

    .line 1167
    .local v18, "offset":I
    :goto_1a5
    move/from16 v0, p2

    move/from16 v1, v18

    if-ge v0, v1, :cond_1c2

    .line 1168
    const-string v5, "ChatHints"

    const v23, 0x7f070169

    move/from16 v0, v23

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1166
    .end local v18    # "offset":I
    :cond_1bf
    const/16 v18, 0x0

    goto :goto_1a5

    .line 1170
    .restart local v18    # "offset":I
    :cond_1c2
    const-string v5, "Recent"

    const v23, 0x7f070476

    move/from16 v0, v23

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1172
    .end local v18    # "offset":I
    :cond_1d6
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1f4

    .line 1173
    const-string v5, "Hashtags"

    const v23, 0x7f07027b

    move/from16 v0, v23

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1174
    :cond_1f4
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_21e

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, p2

    if-ne v0, v5, :cond_21e

    .line 1175
    const-string v5, "GlobalSearch"

    const v23, 0x7f07026c

    move/from16 v0, v23

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1177
    :cond_21e
    const-string v5, "SearchMessages"

    const v23, 0x7f0704be

    move/from16 v0, v23

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1182
    .end local v4    # "cell":Lorg/telegram/ui/Cells/GraySectionCell;
    :pswitch_22e
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/DialogCell;

    .line 1183
    .local v4, "cell":Lorg/telegram/ui/Cells/DialogCell;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, p2

    if-eq v0, v5, :cond_25e

    const/4 v5, 0x1

    :goto_23f
    iput-boolean v5, v4, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    .line 1184
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/messenger/MessageObject;

    .line 1185
    .local v16, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v24

    move-object/from16 v0, v16

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-wide/from16 v0, v24

    move-object/from16 v2, v16

    invoke-virtual {v4, v0, v1, v2, v5}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(JLorg/telegram/messenger/MessageObject;I)V

    goto/16 :goto_7

    .line 1183
    .end local v16    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_25e
    const/4 v5, 0x0

    goto :goto_23f

    .line 1192
    .end local v4    # "cell":Lorg/telegram/ui/Cells/DialogCell;
    :pswitch_260
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/HashtagSearchCell;

    .line 1193
    .local v4, "cell":Lorg/telegram/ui/Cells/HashtagSearchCell;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    add-int/lit8 v23, p2, -0x1

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/HashtagSearchCell;->setText(Ljava/lang/CharSequence;)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, p2

    if-eq v0, v5, :cond_289

    const/4 v5, 0x1

    :goto_284
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/HashtagSearchCell;->setNeedDivider(Z)V

    goto/16 :goto_7

    :cond_289
    const/4 v5, 0x0

    goto :goto_284

    .line 1198
    .end local v4    # "cell":Lorg/telegram/ui/Cells/HashtagSearchCell;
    :pswitch_28b
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v19, v0

    check-cast v19, Lorg/telegram/ui/Components/RecyclerListView;

    .line 1199
    .local v19, "recyclerListView":Lorg/telegram/ui/Components/RecyclerListView;
    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;

    div-int/lit8 v23, p2, 0x2

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->setIndex(I)V

    goto/16 :goto_7

    .line 1154
    .end local v19    # "recyclerListView":Lorg/telegram/ui/Components/RecyclerListView;
    .local v4, "cell":Lorg/telegram/ui/Cells/ProfileSearchCell;
    .restart local v6    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .restart local v7    # "name":Ljava/lang/CharSequence;
    .restart local v9    # "isRecent":Z
    .restart local v10    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v12    # "foundUserName":Ljava/lang/String;
    .restart local v13    # "globalCount":I
    .restart local v14    # "globalSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    .restart local v15    # "localCount":I
    .restart local v20    # "un":Ljava/lang/String;
    .restart local v21    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v22    # "username":Ljava/lang/CharSequence;
    :catch_2a2
    move-exception v11

    move-object/from16 v8, v22

    .end local v22    # "username":Ljava/lang/CharSequence;
    .restart local v8    # "username":Ljava/lang/CharSequence;
    goto/16 :goto_185

    .line 1102
    nop

    :pswitch_data_2a8
    .packed-switch 0x0
        :pswitch_8
        :pswitch_18f
        :pswitch_22e
        :pswitch_7
        :pswitch_260
        :pswitch_28b
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 9
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1032
    const/4 v2, 0x0

    .line 1033
    .local v2, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_90

    .line 1092
    :goto_6
    const/4 v3, 0x5

    if-ne p2, v3, :cond_85

    .line 1093
    new-instance v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-direct {v3, v5, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1097
    :goto_17
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v3

    .line 1035
    :pswitch_1d
    new-instance v2, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .end local v2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    .line 1036
    .restart local v2    # "view":Landroid/view/View;
    goto :goto_6

    .line 1038
    :pswitch_25
    new-instance v2, Lorg/telegram/ui/Cells/GraySectionCell;

    .end local v2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    .line 1039
    .restart local v2    # "view":Landroid/view/View;
    goto :goto_6

    .line 1041
    :pswitch_2d
    new-instance v2, Lorg/telegram/ui/Cells/DialogCell;

    .end local v2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Cells/DialogCell;-><init>(Landroid/content/Context;)V

    .line 1042
    .restart local v2    # "view":Landroid/view/View;
    goto :goto_6

    .line 1044
    :pswitch_35
    new-instance v2, Lorg/telegram/ui/Cells/LoadingCell;

    .end local v2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    .line 1045
    .restart local v2    # "view":Landroid/view/View;
    goto :goto_6

    .line 1047
    :pswitch_3d
    new-instance v2, Lorg/telegram/ui/Cells/HashtagSearchCell;

    .end local v2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Cells/HashtagSearchCell;-><init>(Landroid/content/Context;)V

    .line 1048
    .restart local v2    # "view":Landroid/view/View;
    goto :goto_6

    .line 1050
    :pswitch_45
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$9;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$9;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/content/Context;)V

    .line 1059
    .local v0, "horizontalListView":Lorg/telegram/ui/Components/RecyclerListView;
    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 1060
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V

    .line 1061
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1062
    new-instance v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$10;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$10;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/content/Context;)V

    .line 1068
    .local v1, "layoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1069
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 1071
    new-instance v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;

    invoke-direct {v3, p0, v4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1072
    new-instance v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$11;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$11;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1080
    new-instance v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$12;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$12;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 1089
    move-object v2, v0

    .line 1090
    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    goto :goto_6

    .line 1095
    .end local v0    # "horizontalListView":Lorg/telegram/ui/Components/RecyclerListView;
    .end local v1    # "layoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    :cond_85
    new-instance v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v5, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_17

    .line 1033
    nop

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_25
        :pswitch_2d
        :pswitch_35
        :pswitch_3d
        :pswitch_45
    .end packed-switch
.end method

.method public putRecentSearch(JLorg/telegram/tgnet/TLObject;)V
    .registers 11
    .param p1, "did"    # J
    .param p3, "object"    # Lorg/telegram/tgnet/TLObject;

    .prologue
    .line 468
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    .line 469
    .local v0, "recentSearchObject":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;
    if-nez v0, :cond_44

    .line 470
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    .end local v0    # "recentSearchObject":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;
    invoke-direct {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;-><init>()V

    .line 471
    .restart local v0    # "recentSearchObject":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    :goto_1c
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 476
    iput-wide p1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    .line 477
    iput-object p3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->date:I

    .line 479
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    .line 480
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$4;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$4;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 495
    return-void

    .line 473
    :cond_44
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1c
.end method

.method public searchDialogs(Ljava/lang/String;)V
    .registers 12
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 885
    if-eqz p1, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchText:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 955
    :goto_11
    return-void

    .line 888
    :cond_12
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchText:Ljava/lang/String;

    .line 890
    :try_start_14
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_20

    .line 891
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 892
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTimer:Ljava/util/Timer;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_20} :catch_4c

    .line 897
    :cond_20
    :goto_20
    if-eqz p1, :cond_28

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_51

    .line 898
    :cond_28
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->unloadRecentHashtags()V

    .line 899
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 900
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 901
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 902
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    if-eq v0, v3, :cond_45

    .line 903
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0, v2, v1, v1, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZ)V

    .line 905
    :cond_45
    invoke-direct {p0, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchMessagesInternal(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    goto :goto_11

    .line 894
    :catch_4c
    move-exception v7

    .line 895
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_20

    .line 908
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_51
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    if-eq v0, v3, :cond_c8

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_c8

    .line 909
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesSearchEndReached:Z

    .line 910
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->loadRecentHashtags()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 911
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 912
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 913
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getHashtags()Ljava/util/ArrayList;

    move-result-object v8

    .line 914
    .local v8, "hashtags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;>;"
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_7e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_94

    .line 915
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    add-int/lit8 v6, v6, 0x1

    goto :goto_7e

    .line 917
    :cond_94
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v0, :cond_9e

    .line 918
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(Z)V

    .line 925
    .end local v6    # "a":I
    .end local v8    # "hashtags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;>;"
    :cond_9e
    :goto_9e
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    .line 930
    :goto_a1
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    add-int/lit8 v9, v0, 0x1

    iput v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    .line 931
    .local v9, "searchId":I
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTimer:Ljava/util/Timer;

    .line 932
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;

    invoke-direct {v1, p0, p1, v9}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;I)V

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto/16 :goto_11

    .line 921
    .end local v9    # "searchId":I
    :cond_be
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v0, :cond_9e

    .line 922
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(Z)V

    goto :goto_9e

    .line 927
    :cond_c8
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 928
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    goto :goto_a1
.end method

.method public setDelegate(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;)V
    .registers 2
    .param p1, "delegate"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    .prologue
    .line 219
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    .line 220
    return-void
.end method

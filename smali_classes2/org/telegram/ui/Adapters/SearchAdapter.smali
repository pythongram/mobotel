.class public Lorg/telegram/ui/Adapters/SearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SearchAdapter.java"


# instance fields
.field private allowBots:Z

.field private allowChats:Z

.field private allowUsernameSearch:Z

.field private checkedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "*>;"
        }
    .end annotation
.end field

.field private ignoreUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private onlyMutual:Z

.field private searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
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

.field private useUserCell:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;ZZZZ)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "usernameSearch"    # Z
    .param p4, "mutual"    # Z
    .param p5, "chats"    # Z
    .param p6, "bots"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;ZZZZ)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "arg1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    .line 56
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->ignoreUsers:Ljava/util/HashMap;

    .line 58
    iput-boolean p4, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->onlyMutual:Z

    .line 59
    iput-boolean p3, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowUsernameSearch:Z

    .line 60
    iput-boolean p5, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowChats:Z

    .line 61
    iput-boolean p6, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowBots:Z

    .line 62
    new-instance v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-direct {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    new-instance v1, Lorg/telegram/ui/Adapters/SearchAdapter$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Adapters/SearchAdapter$1;-><init>(Lorg/telegram/ui/Adapters/SearchAdapter;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Adapters/SearchAdapter;)Ljava/util/Timer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapter;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapter;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 40
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/SearchAdapter;->processSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Adapters/SearchAdapter;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapter;

    .prologue
    .line 40
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowUsernameSearch:Z

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Adapters/SearchAdapter;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapter;

    .prologue
    .line 40
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowChats:Z

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Adapters/SearchAdapter;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapter;

    .prologue
    .line 40
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowBots:Z

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Adapters/SearchAdapter;)Lorg/telegram/ui/Adapters/SearchAdapterHelper;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapter;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Adapters/SearchAdapter;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapter;

    .prologue
    .line 40
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->onlyMutual:Z

    return v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$902(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    return-object p1
.end method

.method private processSearch(Ljava/lang/String;)V
    .registers 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 117
    new-instance v0, Lorg/telegram/ui/Adapters/SearchAdapter$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Adapters/SearchAdapter$3;-><init>(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v0, Lorg/telegram/ui/Adapters/SearchAdapter$4;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapter$4;-><init>(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 195
    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/tgnet/TLObject;
    .registers 6
    .param p1, "i"    # I

    .prologue
    .line 224
    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 225
    .local v1, "localCount":I
    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 226
    .local v0, "globalCount":I
    if-ltz p1, :cond_1d

    if-ge p1, v1, :cond_1d

    .line 227
    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLObject;

    .line 231
    :goto_1c
    return-object v2

    .line 228
    :cond_1d
    if-le p1, v1, :cond_34

    add-int v2, v0, v1

    if-gt p1, v2, :cond_34

    .line 229
    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v2

    sub-int v3, p1, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLObject;

    goto :goto_1c

    .line 231
    :cond_34
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public getItemCount()I
    .registers 4

    .prologue
    .line 204
    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 205
    .local v0, "count":I
    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 206
    .local v1, "globalCount":I
    if-eqz v1, :cond_15

    .line 207
    add-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v2

    .line 209
    :cond_15
    return v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 320
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_a

    .line 321
    const/4 v0, 0x1

    .line 323
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 199
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isGlobalSearch(I)Z
    .registers 6
    .param p1, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 213
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 214
    .local v1, "localCount":I
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 215
    .local v0, "globalCount":I
    if-ltz p1, :cond_16

    if-ge p1, v1, :cond_16

    .line 220
    :cond_15
    :goto_15
    return v2

    .line 217
    :cond_16
    if-le p1, v1, :cond_15

    add-int v3, v0, v1

    if-gt p1, v3, :cond_15

    .line 218
    const/4 v2, 0x1

    goto :goto_15
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 20
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 259
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-nez v4, :cond_89

    .line 260
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v3

    .line 261
    .local v3, "object":Lorg/telegram/tgnet/TLObject;
    if-eqz v3, :cond_89

    .line 262
    const/4 v10, 0x0

    .line 263
    .local v10, "id":I
    const/4 v11, 0x0

    .line 264
    .local v11, "un":Ljava/lang/String;
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_8a

    move-object v4, v3

    .line 265
    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object v4, v3

    .line 266
    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    iget v10, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 272
    :cond_20
    :goto_20
    const/4 v6, 0x0

    .line 273
    .local v6, "username":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 274
    .local v5, "name":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, p2

    if-ge v0, v4, :cond_99

    .line 275
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "name":Ljava/lang/CharSequence;
    check-cast v5, Ljava/lang/CharSequence;

    .line 276
    .restart local v5    # "name":Ljava/lang/CharSequence;
    if-eqz v5, :cond_63

    if-eqz v11, :cond_63

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_63

    .line 277
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "@"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 278
    move-object v6, v5

    .line 279
    const/4 v5, 0x0

    .line 296
    :cond_63
    :goto_63
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/Adapters/SearchAdapter;->useUserCell:Z

    if-eqz v4, :cond_e4

    .line 297
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v12, Lorg/telegram/ui/Cells/UserCell;

    .line 298
    .local v12, "userCell":Lorg/telegram/ui/Cells/UserCell;
    const/4 v4, 0x0

    invoke-virtual {v12, v3, v5, v6, v4}, Lorg/telegram/ui/Cells/UserCell;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Adapters/SearchAdapter;->checkedMap:Ljava/util/HashMap;

    if-eqz v4, :cond_89

    .line 300
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Adapters/SearchAdapter;->checkedMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x0

    invoke-virtual {v12, v4, v7}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    .line 316
    .end local v3    # "object":Lorg/telegram/tgnet/TLObject;
    .end local v5    # "name":Ljava/lang/CharSequence;
    .end local v6    # "username":Ljava/lang/CharSequence;
    .end local v10    # "id":I
    .end local v11    # "un":Ljava/lang/String;
    .end local v12    # "userCell":Lorg/telegram/ui/Cells/UserCell;
    :cond_89
    :goto_89
    return-void

    .line 267
    .restart local v3    # "object":Lorg/telegram/tgnet/TLObject;
    .restart local v10    # "id":I
    .restart local v11    # "un":Ljava/lang/String;
    :cond_8a
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_20

    move-object v4, v3

    .line 268
    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    move-object v4, v3

    .line 269
    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v10, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    goto :goto_20

    .line 282
    .restart local v5    # "name":Ljava/lang/CharSequence;
    .restart local v6    # "username":Ljava/lang/CharSequence;
    :cond_99
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, p2

    if-le v0, v4, :cond_63

    if-eqz v11, :cond_63

    .line 283
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundUsername()Ljava/lang/String;

    move-result-object v9

    .line 284
    .local v9, "foundUserName":Ljava/lang/String;
    const-string v4, "@"

    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 285
    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 288
    :cond_bc
    :try_start_bc
    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_c1} :catch_de

    .line 289
    .end local v6    # "username":Ljava/lang/CharSequence;
    .local v13, "username":Ljava/lang/CharSequence;
    :try_start_c1
    move-object v0, v13

    check-cast v0, Landroid/text/SpannableStringBuilder;

    move-object v4, v0

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-string v14, "windowBackgroundWhiteBlueText4"

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v14

    invoke-direct {v7, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v14, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v4, v7, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_dc} :catch_10e

    move-object v6, v13

    .line 293
    .end local v13    # "username":Ljava/lang/CharSequence;
    .restart local v6    # "username":Ljava/lang/CharSequence;
    goto :goto_63

    .line 290
    :catch_de
    move-exception v8

    .line 291
    .local v8, "e":Ljava/lang/Exception;
    :goto_df
    move-object v6, v11

    .line 292
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_63

    .line 303
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "foundUserName":Ljava/lang/String;
    :cond_e4
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 304
    .local v2, "profileSearchCell":Lorg/telegram/ui/Cells/ProfileSearchCell;
    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 305
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/SearchAdapter;->getItemCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, p2

    if-eq v0, v4, :cond_10c

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, p2

    if-eq v0, v4, :cond_10c

    const/4 v4, 0x1

    :goto_108
    iput-boolean v4, v2, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    goto/16 :goto_89

    :cond_10c
    const/4 v4, 0x0

    goto :goto_108

    .line 290
    .end local v2    # "profileSearchCell":Lorg/telegram/ui/Cells/ProfileSearchCell;
    .end local v6    # "username":Ljava/lang/CharSequence;
    .restart local v9    # "foundUserName":Ljava/lang/String;
    .restart local v13    # "username":Ljava/lang/CharSequence;
    :catch_10e
    move-exception v8

    move-object v6, v13

    .end local v13    # "username":Ljava/lang/CharSequence;
    .restart local v6    # "username":Ljava/lang/CharSequence;
    goto :goto_df
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 237
    packed-switch p2, :pswitch_data_40

    .line 250
    new-instance v0, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    .local v0, "view":Landroid/view/View;
    move-object v1, v0

    .line 251
    check-cast v1, Lorg/telegram/ui/Cells/GraySectionCell;

    const-string v2, "GlobalSearch"

    const v3, 0x7f07026c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    .line 254
    :cond_1b
    :goto_1b
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 239
    .end local v0    # "view":Landroid/view/View;
    :pswitch_21
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->useUserCell:Z

    if-eqz v1, :cond_37

    .line 240
    new-instance v0, Lorg/telegram/ui/Cells/UserCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 241
    .restart local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->checkedMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1b

    move-object v1, v0

    .line 242
    check-cast v1, Lorg/telegram/ui/Cells/UserCell;

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    goto :goto_1b

    .line 245
    .end local v0    # "view":Landroid/view/View;
    :cond_37
    new-instance v0, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    .line 247
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_1b

    .line 237
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_21
    .end packed-switch
.end method

.method public searchDialogs(Ljava/lang/String;)V
    .registers 9
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_9

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_28

    .line 92
    :cond_9
    :goto_9
    if-nez p1, :cond_2d

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 95
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowUsernameSearch:Z

    if-eqz v0, :cond_24

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowChats:Z

    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowBots:Z

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZ)V

    .line 98
    :cond_24
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/SearchAdapter;->notifyDataSetChanged()V

    .line 114
    :goto_27
    return-void

    .line 89
    :catch_28
    move-exception v6

    .line 90
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 100
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2d
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchTimer:Ljava/util/Timer;

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/Adapters/SearchAdapter$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Adapters/SearchAdapter$2;-><init>(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_27
.end method

.method public setCheckedMap(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;*>;"
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->checkedMap:Ljava/util/HashMap;

    .line 78
    return-void
.end method

.method public setUseUserCell(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->useUserCell:Z

    .line 82
    return-void
.end method

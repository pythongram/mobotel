.class public Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactAdapter;
.super Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
.source "SpecialContactAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field specialContactsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactAdapter;->specialContactsArray:Ljava/util/ArrayList;

    .line 23
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactAdapter;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private getSpecialContactsArray()V
    .registers 8

    .prologue
    .line 27
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "mainconfig"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 38
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->getUsers()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 39
    .local v1, "myVeryOwnIterator":Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    iget v3, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 41
    .local v3, "uid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "specific_c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 42
    .local v0, "isSpecific":Z
    if-eqz v0, :cond_19

    .line 43
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactAdapter;->specialContactsArray:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 46
    .end local v0    # "isSpecific":Z
    .end local v3    # "uid":I
    :cond_4a
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactAdapter;->specialContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 62
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactAdapter;->specialContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 63
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$User;
    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 68
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 73
    if-nez p2, :cond_b

    .line 74
    new-instance p2, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0xa

    invoke-direct {p2, v1, v2}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;-><init>(Landroid/content/Context;I)V

    .line 76
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_b
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactAdapter;->specialContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .local v0, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object v1, p2

    .line 77
    check-cast v1, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactCell;->setData(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 79
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactAdapter;->specialContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 51
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactAdapter;->getSpecialContactsArray()V

    .line 52
    invoke-super {p0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;->notifyDataSetChanged()V

    .line 53
    return-void
.end method

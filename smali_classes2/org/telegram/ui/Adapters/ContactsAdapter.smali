.class public Lorg/telegram/ui/Adapters/ContactsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
.source "ContactsAdapter.java"


# instance fields
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

.field private isAdmin:Z

.field private mContext:Landroid/content/Context;

.field private needPhonebook:Z

.field private onlyUsers:I

.field private scrolling:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLjava/util/HashMap;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onlyUsersType"    # I
    .param p3, "arg2"    # Z
    .param p5, "arg4"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p4, "arg3":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    .line 44
    iput p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    .line 45
    iput-boolean p3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    .line 46
    iput-object p4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->ignoreUsers:Ljava/util/HashMap;

    .line 47
    iput-boolean p5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    .line 48
    return-void
.end method


# virtual methods
.method public getCountForSection(I)I
    .registers 8
    .param p1, "section"    # I

    .prologue
    const/4 v1, 0x2

    .line 135
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v4, v1, :cond_40

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v3, v4, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    .line 136
    .local v3, "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :goto_b
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v4, v1, :cond_47

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v2, v4, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 138
    .local v2, "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_15
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v4, :cond_4e

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v4, :cond_4e

    .line 139
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_83

    .line 140
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 141
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 142
    .local v1, "count":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_3d

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v4, :cond_3f

    .line 143
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    .line 166
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .end local v1    # "count":I
    :cond_3f
    :goto_3f
    return v1

    .line 135
    .end local v2    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_40
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v3, v4, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    goto :goto_b

    .line 136
    .restart local v3    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_47
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v2, v4, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_15

    .line 148
    .restart local v2    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4e
    if-nez p1, :cond_5a

    .line 149
    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-nez v4, :cond_3f

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v4, :cond_3f

    .line 152
    const/4 v1, 0x4

    goto :goto_3f

    .line 154
    :cond_5a
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_83

    .line 155
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 156
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 157
    .restart local v1    # "count":I
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_80

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v4, :cond_3f

    .line 158
    :cond_80
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 163
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .end local v1    # "count":I
    :cond_83
    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v4, :cond_92

    .line 164
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_3f

    .line 166
    :cond_92
    const/4 v1, 0x0

    goto :goto_3f
.end method

.method public getItem(II)Ljava/lang/Object;
    .registers 9
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 59
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v4, v5, :cond_49

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v2, v4, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    .line 60
    .local v2, "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :goto_c
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v4, v5, :cond_50

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v1, v4, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 62
    .local v1, "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_16
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v4, :cond_57

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v4, :cond_57

    .line 63
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_48

    .line 64
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 65
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_48

    .line 66
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 86
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_48
    :goto_48
    return-object v3

    .line 59
    .end local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_49
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v2, v4, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    goto :goto_c

    .line 60
    .restart local v2    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_50
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v1, v4, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_16

    .line 71
    .restart local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_57
    if-eqz p1, :cond_48

    .line 74
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_88

    .line 75
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 76
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_48

    .line 77
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    goto :goto_48

    .line 83
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_88
    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v4, :cond_48

    .line 84
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_48
.end method

.method public getItemViewType(II)I
    .registers 11
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    .line 275
    iget v7, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v7, v5, :cond_31

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    iget-object v2, v7, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    .line 276
    .local v2, "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :goto_e
    iget v7, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v7, v5, :cond_38

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    iget-object v1, v7, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 277
    .local v1, "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_18
    iget v7, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v7, :cond_41

    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v7, :cond_41

    .line 278
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 279
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p2, v5, :cond_3f

    .line 290
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_30
    :goto_30
    return v3

    .line 275
    .end local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_31
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    iget-object v2, v7, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    goto :goto_e

    .line 276
    .restart local v2    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_38
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    iget-object v1, v7, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_18

    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .restart local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3f
    move v3, v4

    .line 279
    goto :goto_30

    .line 281
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_41
    if-nez p1, :cond_51

    .line 282
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-nez v3, :cond_4b

    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-eqz v3, :cond_4d

    :cond_4b
    if-eq p2, v6, :cond_4f

    :cond_4d
    if-ne p2, v4, :cond_6d

    :cond_4f
    move v3, v5

    .line 283
    goto :goto_30

    .line 285
    :cond_51
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_6d

    .line 286
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 287
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt p2, v5, :cond_30

    move v3, v4

    goto :goto_30

    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_6d
    move v3, v6

    .line 290
    goto :goto_30
.end method

.method public getLetter(I)Ljava/lang/String;
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 295
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_29

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v1, v2, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 296
    .local v1, "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_b
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 297
    .local v0, "section":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_18

    .line 298
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 300
    :cond_18
    if-lez v0, :cond_30

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v0, v2, :cond_30

    .line 301
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 303
    :goto_28
    return-object v2

    .line 295
    .end local v0    # "section":I
    .end local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_29
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v1, v2, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_b

    .line 303
    .restart local v0    # "section":I
    .restart local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_30
    const/4 v2, 0x0

    goto :goto_28
.end method

.method public getPositionForScrollProgress(F)I
    .registers 3
    .param p1, "progress"    # F

    .prologue
    .line 308
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getItemCount()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method public getSectionCount()I
    .registers 5

    .prologue
    .line 119
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_22

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v1, v2, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 120
    .local v1, "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 121
    .local v0, "count":I
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-nez v2, :cond_15

    .line 122
    add-int/lit8 v0, v0, 0x1

    .line 124
    :cond_15
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-eqz v2, :cond_1b

    .line 125
    add-int/lit8 v0, v0, 0x1

    .line 127
    :cond_1b
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v2, :cond_21

    .line 128
    add-int/lit8 v0, v0, 0x1

    .line 130
    :cond_21
    return v0

    .line 119
    .end local v0    # "count":I
    .end local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_22
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v1, v2, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_b
.end method

.method public getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .registers 8
    .param p1, "section"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    .line 171
    iget v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v3, v4, :cond_39

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-object v2, v3, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    .line 172
    .local v2, "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :goto_b
    iget v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v3, v4, :cond_40

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-object v1, v3, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 174
    .local v1, "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_15
    if-nez p2, :cond_1e

    .line 175
    new-instance p2, Lorg/telegram/ui/Cells/LetterSectionCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v3}, Lorg/telegram/ui/Cells/LetterSectionCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_1e
    move-object v0, p2

    .line 177
    check-cast v0, Lorg/telegram/ui/Cells/LetterSectionCell;

    .line 178
    .local v0, "cell":Lorg/telegram/ui/Cells/LetterSectionCell;
    iget v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v3, :cond_4d

    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v3, :cond_4d

    .line 179
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_47

    .line 180
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    .line 193
    :goto_38
    return-object p2

    .line 171
    .end local v0    # "cell":Lorg/telegram/ui/Cells/LetterSectionCell;
    .end local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_39
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-object v2, v3, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    goto :goto_b

    .line 172
    .restart local v2    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_40
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-object v1, v3, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_15

    .line 182
    .restart local v0    # "cell":Lorg/telegram/ui/Cells/LetterSectionCell;
    .restart local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_47
    const-string v3, ""

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_38

    .line 185
    :cond_4d
    if-nez p1, :cond_55

    .line 186
    const-string v3, ""

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_38

    .line 187
    :cond_55
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_69

    .line 188
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_38

    .line 190
    :cond_69
    const-string v3, ""

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_38
.end method

.method public isEnabled(II)Z
    .registers 10
    .param p1, "section"    # I
    .param p2, "row"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 91
    iget v5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v5, v6, :cond_30

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v5

    iget-object v2, v5, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    .line 92
    .local v2, "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :goto_d
    iget v5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v5, v6, :cond_37

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v5

    iget-object v1, v5, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 94
    .local v1, "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_17
    iget v5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v5, :cond_40

    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v5, :cond_40

    .line 95
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 96
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p2, v5, :cond_3e

    .line 114
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_2f
    :goto_2f
    return v3

    .line 91
    .end local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_30
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v5

    iget-object v2, v5, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    goto :goto_d

    .line 92
    .restart local v2    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_37
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v5

    iget-object v1, v5, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_17

    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .restart local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3e
    move v3, v4

    .line 96
    goto :goto_2f

    .line 98
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_40
    if-nez p1, :cond_53

    .line 99
    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-nez v5, :cond_4a

    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-eqz v5, :cond_4e

    .line 100
    :cond_4a
    if-ne p2, v3, :cond_2f

    move v3, v4

    .line 101
    goto :goto_2f

    .line 104
    :cond_4e
    const/4 v5, 0x3

    if-ne p2, v5, :cond_2f

    move v3, v4

    .line 105
    goto :goto_2f

    .line 109
    :cond_53
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2f

    .line 110
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 111
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt p2, v5, :cond_2f

    move v3, v4

    goto :goto_2f
.end method

.method public onBindViewHolder(IILorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .registers 14
    .param p1, "section"    # I
    .param p2, "position"    # I
    .param p3, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 221
    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v8

    packed-switch v8, :pswitch_data_15a

    .line 271
    :cond_7
    :goto_7
    return-void

    .line 223
    :pswitch_8
    iget-object v6, p3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v6, Lorg/telegram/ui/Cells/UserCell;

    .line 224
    .local v6, "userCell":Lorg/telegram/ui/Cells/UserCell;
    iget v8, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_87

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v8

    iget-object v7, v8, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    .line 225
    .local v7, "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :goto_17
    iget v8, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_8e

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v8

    iget-object v3, v8, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 227
    .local v3, "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_22
    iget v8, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v8, :cond_95

    iget-boolean v8, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v8, :cond_95

    const/4 v8, 0x0

    :goto_2b
    sub-int v8, p1, v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 228
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    .line 229
    .local v5, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v5, :cond_51

    iget-boolean v8, v5, Lorg/telegram/tgnet/TLRPC$User;->mutual_contact:Z

    if-nez v8, :cond_97

    :cond_51
    const/4 v2, 0x0

    .line 231
    .local v2, "i2":I
    :goto_52
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v5, v8, v9, v2}, Lorg/telegram/ui/Cells/UserCell;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 232
    iget-object v8, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->checkedMap:Ljava/util/HashMap;

    if-eqz v8, :cond_6f

    .line 233
    iget-object v8, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->checkedMap:Ljava/util/HashMap;

    iget v9, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    iget-boolean v8, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->scrolling:Z

    if-nez v8, :cond_9b

    const/4 v8, 0x1

    :goto_6c
    invoke-virtual {v6, v9, v8}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    .line 235
    :cond_6f
    iget-object v8, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->ignoreUsers:Ljava/util/HashMap;

    if-eqz v8, :cond_7

    .line 236
    iget-object v8, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->ignoreUsers:Ljava/util/HashMap;

    iget v9, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9d

    .line 237
    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Cells/UserCell;->setAlpha(F)V

    goto :goto_7

    .line 224
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .end local v2    # "i2":I
    .end local v3    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v7    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_87
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v8

    iget-object v7, v8, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    goto :goto_17

    .line 225
    .restart local v7    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_8e
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v8

    iget-object v3, v8, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_22

    .line 227
    .restart local v3    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_95
    const/4 v8, 0x1

    goto :goto_2b

    .line 229
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .restart local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_97
    const v2, 0x7f0201ca

    goto :goto_52

    .line 233
    .restart local v2    # "i2":I
    :cond_9b
    const/4 v8, 0x0

    goto :goto_6c

    .line 239
    :cond_9d
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Cells/UserCell;->setAlpha(F)V

    goto/16 :goto_7

    .line 244
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .end local v2    # "i2":I
    .end local v3    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v6    # "userCell":Lorg/telegram/ui/Cells/UserCell;
    .end local v7    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :pswitch_a4
    iget-object v4, p3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/TextCell;

    .line 245
    .local v4, "textCell":Lorg/telegram/ui/Cells/TextCell;
    if-nez p1, :cond_10f

    .line 246
    iget-boolean v8, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v8, :cond_bf

    .line 247
    const-string v8, "InviteFriends"

    const v9, 0x7f07029f

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0201c8

    invoke-virtual {v4, v8, v9}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 248
    :cond_bf
    iget-boolean v8, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-eqz v8, :cond_d4

    .line 249
    const-string v8, "InviteToGroupByLink"

    const v9, 0x7f0702a3

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0201c8

    invoke-virtual {v4, v8, v9}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 251
    :cond_d4
    if-nez p2, :cond_e7

    .line 252
    const-string v8, "NewGroup"

    const v9, 0x7f070344

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0201ca

    invoke-virtual {v4, v8, v9}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 253
    :cond_e7
    const/4 v8, 0x1

    if-ne p2, v8, :cond_fb

    .line 254
    const-string v8, "NewSecretChat"

    const v9, 0x7f07034c

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0201cc

    invoke-virtual {v4, v8, v9}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 255
    :cond_fb
    const/4 v8, 0x2

    if-ne p2, v8, :cond_7

    .line 256
    const-string v8, "NewChannel"

    const v9, 0x7f070342

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0201c1

    invoke-virtual {v4, v8, v9}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 260
    :cond_10f
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ContactsController$Contact;

    .line 261
    .local v1, "contact":Lorg/telegram/messenger/ContactsController$Contact;
    iget-object v8, v1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    if-eqz v8, :cond_143

    iget-object v8, v1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    if-eqz v8, :cond_143

    .line 262
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 263
    :cond_143
    iget-object v8, v1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    if-eqz v8, :cond_152

    iget-object v8, v1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    if-nez v8, :cond_152

    .line 264
    iget-object v8, v1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 266
    :cond_152
    iget-object v8, v1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 221
    nop

    :pswitch_data_15a
    .packed-switch 0x0
        :pswitch_8
        :pswitch_a4
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 9
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/high16 v3, 0x42900000    # 72.0f

    const/high16 v2, 0x41e00000    # 28.0f

    const/4 v5, 0x0

    .line 199
    packed-switch p2, :pswitch_data_5c

    .line 212
    new-instance v0, Lorg/telegram/ui/Cells/DividerCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/DividerCell;-><init>(Landroid/content/Context;)V

    .line 213
    .local v0, "view":Landroid/view/View;
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_57

    move v1, v2

    :goto_14
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_59

    :goto_1c
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 216
    :goto_23
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 201
    .end local v0    # "view":Landroid/view/View;
    :pswitch_29
    new-instance v0, Lorg/telegram/ui/Cells/UserCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0x3a

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 202
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_23

    .line 204
    .end local v0    # "view":Landroid/view/View;
    :pswitch_34
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 205
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_23

    .line 207
    .end local v0    # "view":Landroid/view/View;
    :pswitch_3c
    new-instance v0, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    .restart local v0    # "view":Landroid/view/View;
    move-object v1, v0

    .line 208
    check-cast v1, Lorg/telegram/ui/Cells/GraySectionCell;

    const-string v2, "Contacts"

    const v3, 0x7f070191

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto :goto_23

    :cond_57
    move v1, v3

    .line 213
    goto :goto_14

    :cond_59
    move v3, v2

    goto :goto_1c

    .line 199
    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_29
        :pswitch_34
        :pswitch_3c
    .end packed-switch
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
    .line 51
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;*>;"
    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->checkedMap:Ljava/util/HashMap;

    .line 52
    return-void
.end method

.method public setIsScrolling(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->scrolling:Z

    .line 56
    return-void
.end method

.class public Lorg/telegram/ui/Adapters/OnlineAdaptors;
.super Lorg/telegram/ui/Adapters/BaseSectionsAdapter;
.source "OnlineAdaptors.java"


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
    .line 33
    .local p4, "arg3":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->mContext:Landroid/content/Context;

    .line 35
    iput p2, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->onlyUsers:I

    .line 36
    iput-boolean p3, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->needPhonebook:Z

    .line 37
    iput-object p4, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->ignoreUsers:Ljava/util/HashMap;

    .line 38
    iput-boolean p5, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->isAdmin:Z

    .line 39
    return-void
.end method


# virtual methods
.method public getCountForSection(I)I
    .registers 8
    .param p1, "section"    # I

    .prologue
    const/4 v1, 0x2

    .line 127
    iget v4, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->onlyUsers:I

    if-ne v4, v1, :cond_40

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v3, v4, Lorg/telegram/messenger/ContactsController;->onlineUsersMutualSectionsDict:Ljava/util/HashMap;

    .line 128
    .local v3, "onlineUsersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :goto_b
    iget v4, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->onlyUsers:I

    if-ne v4, v1, :cond_47

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v2, v4, Lorg/telegram/messenger/ContactsController;->onlineSortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 130
    .local v2, "onlineSortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_15
    iget v4, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->onlyUsers:I

    if-eqz v4, :cond_4e

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->isAdmin:Z

    if-nez v4, :cond_4e

    .line 131
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_83

    .line 132
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 133
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 134
    .local v1, "count":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_3d

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->needPhonebook:Z

    if-eqz v4, :cond_3f

    .line 135
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    .line 158
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .end local v1    # "count":I
    :cond_3f
    :goto_3f
    return v1

    .line 127
    .end local v2    # "onlineSortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "onlineUsersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_40
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v3, v4, Lorg/telegram/messenger/ContactsController;->onlineUsersSectionsDict:Ljava/util/HashMap;

    goto :goto_b

    .line 128
    .restart local v3    # "onlineUsersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_47
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v2, v4, Lorg/telegram/messenger/ContactsController;->onlineSortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_15

    .line 140
    .restart local v2    # "onlineSortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4e
    if-nez p1, :cond_5a

    .line 141
    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->needPhonebook:Z

    if-nez v4, :cond_3f

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->isAdmin:Z

    if-nez v4, :cond_3f

    .line 144
    const/4 v1, 0x4

    goto :goto_3f

    .line 146
    :cond_5a
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_83

    .line 147
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 148
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 149
    .restart local v1    # "count":I
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_80

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->needPhonebook:Z

    if-eqz v4, :cond_3f

    .line 150
    :cond_80
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 155
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .end local v1    # "count":I
    :cond_83
    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->needPhonebook:Z

    if-eqz v4, :cond_92

    .line 156
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_3f

    .line 158
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

    .line 51
    iget v4, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->onlyUsers:I

    if-ne v4, v5, :cond_49

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v2, v4, Lorg/telegram/messenger/ContactsController;->onlineUsersMutualSectionsDict:Ljava/util/HashMap;

    .line 52
    .local v2, "onlineUsersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :goto_c
    iget v4, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->onlyUsers:I

    if-ne v4, v5, :cond_50

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v1, v4, Lorg/telegram/messenger/ContactsController;->onlineSortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 54
    .local v1, "onlineSortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_16
    iget v4, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->onlyUsers:I

    if-eqz v4, :cond_57

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->isAdmin:Z

    if-nez v4, :cond_57

    .line 55
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_48

    .line 56
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 57
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_48

    .line 58
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

    .line 78
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_48
    :goto_48
    return-object v3

    .line 51
    .end local v1    # "onlineSortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "onlineUsersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_49
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v2, v4, Lorg/telegram/messenger/ContactsController;->onlineUsersSectionsDict:Ljava/util/HashMap;

    goto :goto_c

    .line 52
    .restart local v2    # "onlineUsersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_50
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v1, v4, Lorg/telegram/messenger/ContactsController;->onlineSortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_16

    .line 63
    .restart local v1    # "onlineSortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_57
    if-eqz p1, :cond_48

    .line 66
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_88

    .line 67
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 68
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_48

    .line 69
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

    .line 75
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_88
    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->needPhonebook:Z

    if-eqz v4, :cond_48

    .line 76
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_48
.end method

.method public getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .param p1, "section"    # I
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/OnlineAdaptors;->getItemViewType(II)I

    move-result v5

    .line 190
    .local v5, "type":I
    const/4 v7, 0x4

    if-ne v5, v7, :cond_30

    .line 191
    if-nez p3, :cond_29

    .line 192
    new-instance p3, Lorg/telegram/ui/Cells/DividerCell;

    .end local p3    # "convertView":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->mContext:Landroid/content/Context;

    invoke-direct {p3, v7}, Lorg/telegram/ui/Cells/DividerCell;-><init>(Landroid/content/Context;)V

    .line 193
    .restart local p3    # "convertView":Landroid/view/View;
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_2a

    const/high16 v7, 0x41e00000    # 28.0f

    :goto_16
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/4 v9, 0x0

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_2d

    const/high16 v7, 0x42900000    # 72.0f

    :goto_21
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v10, 0x0

    invoke-virtual {p3, v8, v9, v7, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 254
    :cond_29
    :goto_29
    return-object p3

    .line 193
    :cond_2a
    const/high16 v7, 0x42900000    # 72.0f

    goto :goto_16

    :cond_2d
    const/high16 v7, 0x41e00000    # 28.0f

    goto :goto_21

    .line 195
    :cond_30
    const/4 v7, 0x3

    if-ne v5, v7, :cond_50

    .line 196
    if-nez p3, :cond_29

    .line 197
    new-instance p3, Lorg/telegram/ui/Cells/GreySectionCell;

    .end local p3    # "convertView":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->mContext:Landroid/content/Context;

    invoke-direct {p3, v7}, Lorg/telegram/ui/Cells/GreySectionCell;-><init>(Landroid/content/Context;)V

    .restart local p3    # "convertView":Landroid/view/View;
    move-object v7, p3

    .line 198
    check-cast v7, Lorg/telegram/ui/Cells/GreySectionCell;

    const-string v8, "Contacts"

    const v9, 0x7f070191

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Cells/GreySectionCell;->setText(Ljava/lang/String;)V

    goto :goto_29

    .line 200
    :cond_50
    const/4 v7, 0x2

    if-ne v5, v7, :cond_c1

    .line 201
    if-nez p3, :cond_5c

    .line 202
    new-instance p3, Lorg/telegram/ui/Cells/TextCell;

    .end local p3    # "convertView":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->mContext:Landroid/content/Context;

    invoke-direct {p3, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .restart local p3    # "convertView":Landroid/view/View;
    :cond_5c
    move-object v0, p3

    .line 204
    check-cast v0, Lorg/telegram/ui/Cells/TextCell;

    .line 205
    .local v0, "actionCell":Lorg/telegram/ui/Cells/TextCell;
    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->needPhonebook:Z

    if-eqz v7, :cond_73

    .line 206
    const-string v7, "InviteFriends"

    const v8, 0x7f07029f

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0201c8

    invoke-virtual {v0, v7, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto :goto_29

    .line 207
    :cond_73
    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->isAdmin:Z

    if-eqz v7, :cond_87

    .line 208
    const-string v7, "InviteToGroupByLink"

    const v8, 0x7f0702a3

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0201c8

    invoke-virtual {v0, v7, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto :goto_29

    .line 210
    :cond_87
    if-nez p2, :cond_99

    .line 211
    const-string v7, "NewGroup"

    const v8, 0x7f070344

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0201ca

    invoke-virtual {v0, v7, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto :goto_29

    .line 212
    :cond_99
    const/4 v7, 0x1

    if-ne p2, v7, :cond_ad

    .line 213
    const-string v7, "NewSecretChat"

    const v8, 0x7f07034c

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0201cc

    invoke-virtual {v0, v7, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_29

    .line 214
    :cond_ad
    const/4 v7, 0x2

    if-ne p2, v7, :cond_29

    .line 215
    const-string v7, "NewChannel"

    const v8, 0x7f070342

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0201c1

    invoke-virtual {v0, v7, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_29

    .line 218
    .end local v0    # "actionCell":Lorg/telegram/ui/Cells/TextCell;
    :cond_c1
    const/4 v7, 0x1

    if-ne v5, v7, :cond_123

    .line 219
    if-nez p3, :cond_cd

    .line 220
    new-instance p3, Lorg/telegram/ui/Cells/TextCell;

    .end local p3    # "convertView":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->mContext:Landroid/content/Context;

    invoke-direct {p3, v7}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 222
    .restart local p3    # "convertView":Landroid/view/View;
    :cond_cd
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ContactsController$Contact;

    .line 223
    .local v2, "contact":Lorg/telegram/messenger/ContactsController$Contact;
    iget-object v7, v2, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    if-eqz v7, :cond_109

    iget-object v7, v2, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    if-eqz v7, :cond_109

    move-object v7, p3

    .line 224
    check-cast v7, Lorg/telegram/ui/Cells/TextCell;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v2, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    .line 230
    :goto_102
    const/16 v7, 0x8

    invoke-virtual {p3, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_29

    .line 225
    :cond_109
    iget-object v7, v2, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    if-eqz v7, :cond_11a

    iget-object v7, v2, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    if-nez v7, :cond_11a

    move-object v7, p3

    .line 226
    check-cast v7, Lorg/telegram/ui/Cells/TextCell;

    iget-object v8, v2, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto :goto_102

    :cond_11a
    move-object v7, p3

    .line 228
    check-cast v7, Lorg/telegram/ui/Cells/TextCell;

    iget-object v8, v2, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto :goto_102

    .line 231
    .end local v2    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    :cond_123
    if-nez v5, :cond_29

    .line 232
    if-nez p3, :cond_13e

    .line 233
    new-instance p3, Lorg/telegram/ui/Cells/UserCell;

    .end local p3    # "convertView":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->mContext:Landroid/content/Context;

    const/16 v8, 0x3a

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p3, v7, v8, v9, v10}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    .restart local p3    # "convertView":Landroid/view/View;
    move-object v7, p3

    .line 234
    check-cast v7, Lorg/telegram/ui/Cells/UserCell;

    const v8, -0x575758

    const v9, -0xc47b40

    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/Cells/UserCell;->setStatusColors(II)V

    .line 237
    :cond_13e
    iget v7, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->onlyUsers:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1c0

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    iget-object v4, v7, Lorg/telegram/messenger/ContactsController;->onlineUsersMutualSectionsDict:Ljava/util/HashMap;

    .line 238
    .local v4, "onlineUsersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :goto_149
    iget v7, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->onlyUsers:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1c7

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    iget-object v3, v7, Lorg/telegram/messenger/ContactsController;->onlineSortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 240
    .local v3, "onlineSortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_154
    iget v7, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->onlyUsers:I

    if-eqz v7, :cond_1ce

    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->isAdmin:Z

    if-nez v7, :cond_1ce

    const/4 v7, 0x0

    :goto_15d
    sub-int v7, p1, v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 241
    .local v1, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .local v6, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object v7, p3

    .line 242
    check-cast v7, Lorg/telegram/ui/Cells/UserCell;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v6, v8, v9, v10}, Lorg/telegram/ui/Cells/UserCell;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 243
    iget-object v7, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->checkedMap:Ljava/util/HashMap;

    if-eqz v7, :cond_1a7

    move-object v7, p3

    .line 244
    check-cast v7, Lorg/telegram/ui/Cells/UserCell;

    iget-object v8, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->checkedMap:Ljava/util/HashMap;

    iget v9, v6, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    iget-boolean v8, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->scrolling:Z

    if-nez v8, :cond_1d0

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xa

    if-le v8, v10, :cond_1d0

    const/4 v8, 0x1

    :goto_1a4
    invoke-virtual {v7, v9, v8}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    .line 246
    :cond_1a7
    iget-object v7, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->ignoreUsers:Ljava/util/HashMap;

    if-eqz v7, :cond_29

    .line 247
    iget-object v7, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->ignoreUsers:Ljava/util/HashMap;

    iget v8, v6, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d2

    .line 248
    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {p3, v7}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_29

    .line 237
    .end local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .end local v3    # "onlineSortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "onlineUsersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1c0
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    iget-object v4, v7, Lorg/telegram/messenger/ContactsController;->onlineUsersSectionsDict:Ljava/util/HashMap;

    goto :goto_149

    .line 238
    .restart local v4    # "onlineUsersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_1c7
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    iget-object v3, v7, Lorg/telegram/messenger/ContactsController;->onlineSortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_154

    .line 240
    .restart local v3    # "onlineSortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1ce
    const/4 v7, 0x1

    goto :goto_15d

    .line 244
    .restart local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .restart local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1d0
    const/4 v8, 0x0

    goto :goto_1a4

    .line 250
    :cond_1d2
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p3, v7}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_29
.end method

.method public getItemViewType(II)I
    .registers 12
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    .line 259
    iget v8, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->onlyUsers:I

    if-ne v8, v6, :cond_32

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v8

    iget-object v2, v8, Lorg/telegram/messenger/ContactsController;->onlineUsersMutualSectionsDict:Ljava/util/HashMap;

    .line 260
    .local v2, "onlineUsersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :goto_f
    iget v8, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->onlyUsers:I

    if-ne v8, v6, :cond_39

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v8

    iget-object v1, v8, Lorg/telegram/messenger/ContactsController;->onlineSortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 261
    .local v1, "onlineSortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_19
    iget v8, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->onlyUsers:I

    if-eqz v8, :cond_42

    iget-boolean v8, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->isAdmin:Z

    if-nez v8, :cond_42

    .line 262
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 263
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p2, v5, :cond_40

    .line 281
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_31
    :goto_31
    return v3

    .line 259
    .end local v1    # "onlineSortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "onlineUsersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_32
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v8

    iget-object v2, v8, Lorg/telegram/messenger/ContactsController;->onlineUsersSectionsDict:Ljava/util/HashMap;

    goto :goto_f

    .line 260
    .restart local v2    # "onlineUsersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_39
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v8

    iget-object v1, v8, Lorg/telegram/messenger/ContactsController;->onlineSortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_19

    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .restart local v1    # "onlineSortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_40
    move v3, v4

    .line 263
    goto :goto_31

    .line 265
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_42
    if-nez p1, :cond_56

    .line 266
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->needPhonebook:Z

    if-nez v3, :cond_4c

    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->isAdmin:Z

    if-eqz v3, :cond_50

    .line 267
    :cond_4c
    if-ne p2, v7, :cond_54

    move v3, v5

    .line 268
    goto :goto_31

    .line 271
    :cond_50
    if-ne p2, v5, :cond_54

    move v3, v5

    .line 272
    goto :goto_31

    :cond_54
    move v3, v6

    .line 275
    goto :goto_31

    .line 276
    :cond_56
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_72

    .line 277
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 278
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt p2, v5, :cond_31

    move v3, v4

    goto :goto_31

    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_72
    move v3, v7

    .line 281
    goto :goto_31
.end method

.method public getSectionCount()I
    .registers 5

    .prologue
    .line 111
    iget v2, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->onlyUsers:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_22

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v1, v2, Lorg/telegram/messenger/ContactsController;->onlineSortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 112
    .local v1, "onlineSortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 113
    .local v0, "count":I
    iget v2, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->onlyUsers:I

    if-nez v2, :cond_15

    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 116
    :cond_15
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->isAdmin:Z

    if-eqz v2, :cond_1b

    .line 117
    add-int/lit8 v0, v0, 0x1

    .line 119
    :cond_1b
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->needPhonebook:Z

    if-eqz v2, :cond_21

    .line 120
    add-int/lit8 v0, v0, 0x1

    .line 122
    :cond_21
    return v0

    .line 111
    .end local v0    # "count":I
    .end local v1    # "onlineSortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_22
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v1, v2, Lorg/telegram/messenger/ContactsController;->onlineSortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_b
.end method

.method public getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "section"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x2

    .line 163
    iget v2, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->onlyUsers:I

    if-ne v2, v3, :cond_39

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v1, v2, Lorg/telegram/messenger/ContactsController;->onlineUsersMutualSectionsDict:Ljava/util/HashMap;

    .line 164
    .local v1, "onlineUsersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :goto_b
    iget v2, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->onlyUsers:I

    if-ne v2, v3, :cond_40

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v0, v2, Lorg/telegram/messenger/ContactsController;->onlineSortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 166
    .local v0, "onlineSortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_15
    if-nez p2, :cond_1e

    .line 167
    new-instance p2, Lorg/telegram/ui/Cells/LetterSectionCell;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Lorg/telegram/ui/Cells/LetterSectionCell;-><init>(Landroid/content/Context;)V

    .line 169
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1e
    iget v2, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->onlyUsers:I

    if-eqz v2, :cond_50

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->isAdmin:Z

    if-nez v2, :cond_50

    .line 170
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_47

    move-object v2, p2

    .line 171
    check-cast v2, Lorg/telegram/ui/Cells/LetterSectionCell;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    .line 184
    :goto_38
    return-object p2

    .line 163
    .end local v0    # "onlineSortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "onlineUsersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_39
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v1, v2, Lorg/telegram/messenger/ContactsController;->onlineUsersSectionsDict:Ljava/util/HashMap;

    goto :goto_b

    .line 164
    .restart local v1    # "onlineUsersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_40
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v0, v2, Lorg/telegram/messenger/ContactsController;->onlineSortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_15

    .restart local v0    # "onlineSortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_47
    move-object v2, p2

    .line 173
    check-cast v2, Lorg/telegram/ui/Cells/LetterSectionCell;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_38

    .line 176
    :cond_50
    if-nez p1, :cond_5b

    move-object v2, p2

    .line 177
    check-cast v2, Lorg/telegram/ui/Cells/LetterSectionCell;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_38

    .line 178
    :cond_5b
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_72

    move-object v2, p2

    .line 179
    check-cast v2, Lorg/telegram/ui/Cells/LetterSectionCell;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_38

    :cond_72
    move-object v2, p2

    .line 181
    check-cast v2, Lorg/telegram/ui/Cells/LetterSectionCell;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_38
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 286
    const/4 v0, 0x5

    return v0
.end method

.method public isRowEnabled(II)Z
    .registers 10
    .param p1, "section"    # I
    .param p2, "row"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 83
    iget v5, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->onlyUsers:I

    if-ne v5, v6, :cond_30

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v5

    iget-object v2, v5, Lorg/telegram/messenger/ContactsController;->onlineUsersMutualSectionsDict:Ljava/util/HashMap;

    .line 84
    .local v2, "onlineUsersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :goto_d
    iget v5, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->onlyUsers:I

    if-ne v5, v6, :cond_37

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v5

    iget-object v1, v5, Lorg/telegram/messenger/ContactsController;->onlineSortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 86
    .local v1, "onlineSortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_17
    iget v5, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->onlyUsers:I

    if-eqz v5, :cond_40

    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->isAdmin:Z

    if-nez v5, :cond_40

    .line 87
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 88
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p2, v5, :cond_3e

    .line 106
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_2f
    :goto_2f
    return v3

    .line 83
    .end local v1    # "onlineSortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "onlineUsersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_30
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v5

    iget-object v2, v5, Lorg/telegram/messenger/ContactsController;->onlineUsersSectionsDict:Ljava/util/HashMap;

    goto :goto_d

    .line 84
    .restart local v2    # "onlineUsersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_37
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v5

    iget-object v1, v5, Lorg/telegram/messenger/ContactsController;->onlineSortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_17

    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .restart local v1    # "onlineSortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3e
    move v3, v4

    .line 88
    goto :goto_2f

    .line 90
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_40
    if-nez p1, :cond_53

    .line 91
    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->needPhonebook:Z

    if-nez v5, :cond_4a

    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->isAdmin:Z

    if-eqz v5, :cond_4e

    .line 92
    :cond_4a
    if-ne p2, v3, :cond_2f

    move v3, v4

    .line 93
    goto :goto_2f

    .line 96
    :cond_4e
    const/4 v5, 0x3

    if-ne p2, v5, :cond_2f

    move v3, v4

    .line 97
    goto :goto_2f

    .line 101
    :cond_53
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2f

    .line 102
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 103
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt p2, v5, :cond_2f

    move v3, v4

    goto :goto_2f
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
    .line 42
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;*>;"
    iput-object p1, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->checkedMap:Ljava/util/HashMap;

    .line 43
    return-void
.end method

.method public setIsScrolling(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/OnlineAdaptors;->scrolling:Z

    .line 47
    return-void
.end method

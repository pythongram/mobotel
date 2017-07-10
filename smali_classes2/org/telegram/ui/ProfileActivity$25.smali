.class Lorg/telegram/ui/ProfileActivity$25;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->updateOnlineCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 1995
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 14
    .param p1, "lhs"    # Ljava/lang/Integer;
    .param p2, "rhs"    # Ljava/lang/Integer;

    .prologue
    const v10, 0xc350

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1998
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 1999
    .local v2, "user1":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 2000
    .local v3, "user2":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v0, 0x0

    .line 2001
    .local v0, "status1":I
    const/4 v1, 0x0

    .line 2002
    .local v1, "status2":I
    if-eqz v2, :cond_64

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_64

    .line 2003
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    if-ne v4, v8, :cond_84

    .line 2004
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    add-int v0, v4, v10

    .line 2009
    :cond_64
    :goto_64
    if-eqz v3, :cond_7c

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_7c

    .line 2010
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    if-ne v4, v8, :cond_89

    .line 2011
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    add-int v1, v4, v10

    .line 2016
    :cond_7c
    :goto_7c
    if-lez v0, :cond_94

    if-lez v1, :cond_94

    .line 2017
    if-le v0, v1, :cond_8e

    move v4, v5

    .line 2035
    :goto_83
    return v4

    .line 2006
    :cond_84
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_64

    .line 2013
    :cond_89
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_7c

    .line 2019
    :cond_8e
    if-ge v0, v1, :cond_92

    move v4, v6

    .line 2020
    goto :goto_83

    :cond_92
    move v4, v7

    .line 2022
    goto :goto_83

    .line 2023
    :cond_94
    if-gez v0, :cond_a2

    if-gez v1, :cond_a2

    .line 2024
    if-le v0, v1, :cond_9c

    move v4, v5

    .line 2025
    goto :goto_83

    .line 2026
    :cond_9c
    if-ge v0, v1, :cond_a0

    move v4, v6

    .line 2027
    goto :goto_83

    :cond_a0
    move v4, v7

    .line 2029
    goto :goto_83

    .line 2030
    :cond_a2
    if-gez v0, :cond_a6

    if-gtz v1, :cond_aa

    :cond_a6
    if-nez v0, :cond_ac

    if-eqz v1, :cond_ac

    :cond_aa
    move v4, v6

    .line 2031
    goto :goto_83

    .line 2032
    :cond_ac
    if-gez v1, :cond_b0

    if-gtz v0, :cond_b4

    :cond_b0
    if-nez v1, :cond_b6

    if-eqz v0, :cond_b6

    :cond_b4
    move v4, v5

    .line 2033
    goto :goto_83

    :cond_b6
    move v4, v7

    .line 2035
    goto :goto_83
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1995
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ProfileActivity$25;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

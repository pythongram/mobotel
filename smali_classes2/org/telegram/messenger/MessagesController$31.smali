.class Lorg/telegram/messenger/MessagesController$31;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->deleteUserPhoto(Lorg/telegram/tgnet/TLRPC$InputPhoto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 2005
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$31;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 9
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v5, 0x0

    .line 2008
    if-nez p2, :cond_1e

    .line 2009
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$31;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 2010
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v0, :cond_1f

    .line 2011
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 2012
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$31;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v2, v0, v5}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 2016
    :goto_1c
    if-nez v0, :cond_23

    .line 2033
    .end local v0    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local p1    # "response":Lorg/telegram/tgnet/TLObject;
    :cond_1e
    :goto_1e
    return-void

    .line 2014
    .restart local v0    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local p1    # "response":Lorg/telegram/tgnet/TLObject;
    :cond_1f
    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_1c

    .line 2019
    :cond_23
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesStorage;->clearUserPhotos(I)V

    .line 2020
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2021
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2022
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v5, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 2023
    check-cast p1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .end local p1    # "response":Lorg/telegram/tgnet/TLObject;
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 2024
    new-instance v2, Lorg/telegram/messenger/MessagesController$31$1;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$31$1;-><init>(Lorg/telegram/messenger/MessagesController$31;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1e
.end method

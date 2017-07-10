.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;
.super Ljava/lang/Object;
.source "DialogsSearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

.field final synthetic val$encUsers:Ljava/util/ArrayList;

.field final synthetic val$names:Ljava/util/ArrayList;

.field final synthetic val$result:Ljava/util/ArrayList;

.field final synthetic val$searchId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 6
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 833
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iput p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$searchId:I

    iput-object p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$result:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$encUsers:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$names:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 836
    iget v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$searchId:I

    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I
    invoke-static {v8}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$900(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v8

    if-eq v7, v8, :cond_d

    .line 870
    :goto_c
    return-void

    .line 840
    :cond_d
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v8, "mainconfig"

    invoke-virtual {v7, v8, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 841
    .local v5, "preferences":Landroid/content/SharedPreferences;
    const-string v7, "chat_unlocked"

    invoke-interface {v5, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 842
    .local v2, "chatUnlocked":Z
    const/4 v3, 0x0

    .line 843
    .local v3, "did":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1d
    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_86

    .line 844
    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLObject;

    .line 845
    .local v4, "obj":Lorg/telegram/tgnet/TLObject;
    instance-of v7, v4, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v7, :cond_64

    move-object v6, v4

    .line 846
    check-cast v6, Lorg/telegram/tgnet/TLRPC$User;

    .line 847
    .local v6, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v6, v9}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 849
    iget v3, v6, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 862
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3d
    :goto_3d
    if-nez v2, :cond_61

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hide_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_61

    .line 863
    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 843
    :cond_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 850
    :cond_64
    instance-of v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v7, :cond_75

    move-object v1, v4

    .line 851
    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 852
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v1, v9}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 854
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    .line 855
    goto :goto_3d

    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_75
    instance-of v7, v4, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v7, :cond_3d

    move-object v1, v4

    .line 856
    check-cast v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 857
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v1, v9}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    .line 859
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    goto :goto_3d

    .line 866
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v4    # "obj":Lorg/telegram/tgnet/TLObject;
    :cond_86
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$encUsers:Ljava/util/ArrayList;

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 867
    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$result:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;
    invoke-static {v7, v8}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$1202(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 868
    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$names:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultNames:Ljava/util/ArrayList;
    invoke-static {v7, v8}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$1302(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 869
    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    goto/16 :goto_c
.end method

.class Lorg/telegram/ui/Adapters/SearchAdapterHelper$1$1;
.super Ljava/lang/Object;
.source "SearchAdapterHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;

    .prologue
    .line 69
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 72
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;

    iget v3, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;->val$currentReqId:I

    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;

    iget-object v4, v4, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;->this$0:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    # getter for: Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastReqId:I
    invoke-static {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->access$000(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)I

    move-result v4

    if-ne v3, v4, :cond_94

    .line 73
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v3, :cond_94

    .line 74
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;

    .line 75
    .local v1, "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_found;
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;

    iget-object v3, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;->this$0:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    # getter for: Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->access$100(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 76
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;

    iget-boolean v3, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;->val$allowChats:Z

    if-eqz v3, :cond_44

    .line 77
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_28
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_44

    .line 78
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;

    iget-object v3, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;->this$0:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    # getter for: Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->access$100(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 81
    .end local v0    # "a":I
    :cond_44
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_45
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7e

    .line 82
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 83
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;

    iget-boolean v3, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;->val$allowBots:Z

    if-nez v3, :cond_5f

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v3, :cond_69

    :cond_5f
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;

    iget-boolean v3, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;->val$allowSelf:Z

    if-nez v3, :cond_6c

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v3, :cond_6c

    .line 81
    :cond_69
    :goto_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 86
    :cond_6c
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;

    iget-object v3, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;->this$0:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    # getter for: Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->access$100(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_69

    .line 88
    .end local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_7e
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;

    iget-object v3, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;->this$0:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;

    iget-object v4, v4, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;->val$query:Ljava/lang/String;

    # setter for: Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastFoundUsername:Ljava/lang/String;
    invoke-static {v3, v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->access$202(Lorg/telegram/ui/Adapters/SearchAdapterHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;

    iget-object v3, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;->this$0:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    # getter for: Lorg/telegram/ui/Adapters/SearchAdapterHelper;->delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;
    invoke-static {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->access$300(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;->onDataSetChanged()V

    .line 92
    .end local v0    # "a":I
    .end local v1    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_found;
    :cond_94
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;

    iget-object v3, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;->this$0:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 v4, 0x0

    # setter for: Lorg/telegram/ui/Adapters/SearchAdapterHelper;->reqId:I
    invoke-static {v3, v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->access$402(Lorg/telegram/ui/Adapters/SearchAdapterHelper;I)I

    .line 93
    return-void
.end method

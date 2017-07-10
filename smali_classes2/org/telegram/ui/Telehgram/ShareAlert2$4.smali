.class Lorg/telegram/ui/Telehgram/ShareAlert2$4;
.super Ljava/lang/Object;
.source "ShareAlert2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/ShareAlert2;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/Components/ChatActivityEnterView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

.field final synthetic val$caption:Ljava/lang/CharSequence;

.field final synthetic val$chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/ShareAlert2;Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/ShareAlert2;

    .prologue
    .line 223
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$4;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$4;->val$chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-object p3, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$4;->val$caption:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    .line 227
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$4;->val$chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-nez v4, :cond_d1

    .line 228
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "mainconfig"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 229
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string v4, "forward_type"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 231
    .local v1, "forwardType":I
    if-ne v1, v7, :cond_48

    .line 232
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$4;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->selectedDialogs:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1200(Lorg/telegram/ui/Telehgram/ShareAlert2;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_148

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 233
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v6

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$4;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->sendingMessageObject:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1300(Lorg/telegram/ui/Telehgram/ShareAlert2;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;J)V

    goto :goto_24

    .line 235
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    :cond_48
    const/4 v4, 0x2

    if-ne v1, v4, :cond_8f

    .line 236
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$4;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->selectedDialogs:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1200(Lorg/telegram/ui/Telehgram/ShareAlert2;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_59
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_148

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 237
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$4;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->sendingMessageObject:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1300(Lorg/telegram/ui/Telehgram/ShareAlert2;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 238
    .local v2, "object":Lorg/telegram/messenger/MessageObject;
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v7

    iget-object v8, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v7, v8, v2, v10, v11}, Lorg/telegram/messenger/SendMessagesHelper;->telehProcessForwardFromMyName(Ljava/lang/CharSequence;Lorg/telegram/messenger/MessageObject;J)V

    goto :goto_6f

    .line 242
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    .end local v2    # "object":Lorg/telegram/messenger/MessageObject;
    :cond_8f
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$4;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->selectedDialogs:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1200(Lorg/telegram/ui/Telehgram/ShareAlert2;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_148

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 243
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$4;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->sendingMessageObject:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1300(Lorg/telegram/ui/Telehgram/ShareAlert2;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 244
    .restart local v2    # "object":Lorg/telegram/messenger/MessageObject;
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v2, v8, v9}, Lorg/telegram/messenger/SendMessagesHelper;->processForwardFromMyName(Lorg/telegram/messenger/MessageObject;J)V

    goto :goto_b3

    .line 249
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    .end local v1    # "forwardType":I
    .end local v2    # "object":Lorg/telegram/messenger/MessageObject;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_d1
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$4;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->selectedDialogs:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1200(Lorg/telegram/ui/Telehgram/ShareAlert2;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_df
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_148

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 250
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$4;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->sendingMessageObject:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1300(Lorg/telegram/ui/Telehgram/ShareAlert2;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_df

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 251
    .restart local v2    # "object":Lorg/telegram/messenger/MessageObject;
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_12b

    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v4, :cond_12b

    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v4, :cond_12b

    .line 252
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$4;->val$caption:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v7, v8, v2, v10, v11}, Lorg/telegram/messenger/SendMessagesHelper;->telehProcessForwardFromMyName(Ljava/lang/CharSequence;Lorg/telegram/messenger/MessageObject;J)V

    goto :goto_f5

    .line 254
    :cond_12b
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$4;->val$caption:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 255
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v7, v8, v2, v10, v11}, Lorg/telegram/messenger/SendMessagesHelper;->telehProcessForwardFromMyName(Ljava/lang/CharSequence;Lorg/telegram/messenger/MessageObject;J)V

    goto :goto_f5

    .line 260
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    .end local v2    # "object":Lorg/telegram/messenger/MessageObject;
    :cond_148
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$4;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    invoke-virtual {v4}, Lorg/telegram/ui/Telehgram/ShareAlert2;->dismiss()V

    .line 261
    return-void
.end method

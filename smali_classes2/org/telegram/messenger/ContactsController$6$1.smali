.class Lorg/telegram/messenger/ContactsController$6$1;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ContactsController$6;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$6;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/messenger/ContactsController$6;

    .prologue
    .line 719
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$6$1;->this$1:Lorg/telegram/messenger/ContactsController$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 733
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 734
    .local v7, "toDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    iget-object v11, p0, Lorg/telegram/messenger/ContactsController$6$1;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v11, v11, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    if-eqz v11, :cond_58

    iget-object v11, p0, Lorg/telegram/messenger/ContactsController$6$1;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v11, v11, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_58

    .line 736
    :try_start_15
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 738
    .local v2, "contactsPhonesShort":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$User;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1b
    iget-object v11, p0, Lorg/telegram/messenger/ContactsController$6$1;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v11, v11, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v11, v11, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_66

    .line 739
    iget-object v11, p0, Lorg/telegram/messenger/ContactsController$6$1;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v11, v11, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v11, v11, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 740
    .local v9, "value":Lorg/telegram/tgnet/TLRPC$TL_contact;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget v12, v9, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    .line 741
    .local v8, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v8, :cond_4b

    iget-object v11, v8, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4e

    .line 738
    :cond_4b
    :goto_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 744
    :cond_4e
    iget-object v11, v8, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_53} :catch_54

    goto :goto_4b

    .line 764
    .end local v0    # "a":I
    .end local v2    # "contactsPhonesShort":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v8    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v9    # "value":Lorg/telegram/tgnet/TLRPC$TL_contact;
    :catch_54
    move-exception v3

    .line 765
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 769
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_58
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_65

    .line 770
    iget-object v11, p0, Lorg/telegram/messenger/ContactsController$6$1;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v11, v11, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-virtual {v11, v7}, Lorg/telegram/messenger/ContactsController;->deleteContact(Ljava/util/ArrayList;)V

    .line 772
    :cond_65
    return-void

    .line 746
    .restart local v0    # "a":I
    .restart local v2    # "contactsPhonesShort":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_66
    const/4 v6, 0x0

    .line 747
    .local v6, "removed":I
    :try_start_67
    iget-object v11, p0, Lorg/telegram/messenger/ContactsController$6$1;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v11, v11, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_73
    :goto_73
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_58

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 748
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ContactsController$Contact;

    .line 749
    .local v1, "contact":Lorg/telegram/messenger/ContactsController$Contact;
    const/4 v10, 0x0

    .line 750
    .local v10, "was":Z
    const/4 v0, 0x0

    :goto_87
    iget-object v12, v1, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v0, v12, :cond_ad

    .line 751
    iget-object v12, v1, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 752
    .local v5, "phone":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$User;

    .line 753
    .restart local v8    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v8, :cond_aa

    .line 754
    const/4 v10, 0x1

    .line 755
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    iget-object v12, v1, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 757
    add-int/lit8 v0, v0, -0x1

    .line 750
    :cond_aa
    add-int/lit8 v0, v0, 0x1

    goto :goto_87

    .line 760
    .end local v5    # "phone":Ljava/lang/String;
    .end local v8    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_ad
    if-eqz v10, :cond_b7

    iget-object v12, v1, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_b4} :catch_54

    move-result v12

    if-nez v12, :cond_73

    .line 761
    :cond_b7
    add-int/lit8 v6, v6, 0x1

    goto :goto_73
.end method

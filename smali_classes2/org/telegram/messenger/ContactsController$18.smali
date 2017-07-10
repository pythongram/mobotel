.class Lorg/telegram/messenger/ContactsController$18;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController;->deleteContact(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ContactsController;

.field final synthetic val$uids:Ljava/util/ArrayList;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 1843
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$18;->this$0:Lorg/telegram/messenger/ContactsController;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$18;->val$uids:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/ContactsController$18;->val$users:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 11
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 1846
    if-eqz p2, :cond_3

    .line 1894
    :goto_2
    return-void

    .line 1849
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/ContactsController$18;->val$uids:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesStorage;->deleteContacts(Ljava/util/ArrayList;)V

    .line 1850
    sget-object v5, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v6, Lorg/telegram/messenger/ContactsController$18$1;

    invoke-direct {v6, p0}, Lorg/telegram/messenger/ContactsController$18$1;-><init>(Lorg/telegram/messenger/ContactsController$18;)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1859
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_17
    iget-object v5, p0, Lorg/telegram/messenger/ContactsController$18;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_65

    .line 1860
    iget-object v5, p0, Lorg/telegram/messenger/ContactsController$18;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 1861
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1859
    :cond_2f
    :goto_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 1864
    :cond_32
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    .line 1865
    .local v3, "name":Ljava/lang/CharSequence;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->applyPhoneBookUpdates(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    iget-object v5, p0, Lorg/telegram/messenger/ContactsController$18;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v5, v5, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ContactsController$Contact;

    .line 1867
    .local v1, "contact":Lorg/telegram/messenger/ContactsController$Contact;
    if-eqz v1, :cond_2f

    .line 1868
    iget-object v5, v1, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1869
    .local v2, "index":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_2f

    .line 1870
    iget-object v5, v1, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 1875
    .end local v1    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v2    # "index":I
    .end local v3    # "name":Ljava/lang/CharSequence;
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_65
    new-instance v5, Lorg/telegram/messenger/ContactsController$18$2;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/ContactsController$18$2;-><init>(Lorg/telegram/messenger/ContactsController$18;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

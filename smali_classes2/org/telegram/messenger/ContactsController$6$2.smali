.class Lorg/telegram/messenger/ContactsController$6$2;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


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

.field final synthetic val$contactsBookShort:Ljava/util/HashMap;

.field final synthetic val$contactsMap:Ljava/util/HashMap;

.field final synthetic val$contactsMapToSave:Ljava/util/HashMap;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$6;Ljava/util/HashMap;ILjava/util/HashMap;Ljava/util/HashMap;)V
    .registers 6
    .param p1, "this$1"    # Lorg/telegram/messenger/ContactsController$6;

    .prologue
    .line 826
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$6$2;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$6$2;->val$contactsMapToSave:Ljava/util/HashMap;

    iput p3, p0, Lorg/telegram/messenger/ContactsController$6$2;->val$count:I

    iput-object p4, p0, Lorg/telegram/messenger/ContactsController$6$2;->val$contactsBookShort:Ljava/util/HashMap;

    iput-object p5, p0, Lorg/telegram/messenger/ContactsController$6$2;->val$contactsMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 13
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v9, 0x1

    .line 829
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController$6$2;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v6, v6, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v6}, Lorg/telegram/messenger/ContactsController;->access$008(Lorg/telegram/messenger/ContactsController;)I

    .line 830
    if-nez p2, :cond_a9

    .line 831
    const-string v6, "contacts imported"

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    move-object v3, p1

    .line 832
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    .line 833
    .local v3, "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->retry_contacts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3c

    .line 834
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1b
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->retry_contacts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3c

    .line 835
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->retry_contacts:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 836
    .local v4, "id":J
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController$6$2;->val$contactsMapToSave:Ljava/util/HashMap;

    long-to-int v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 840
    .end local v0    # "a":I
    .end local v4    # "id":J
    :cond_3c
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController$6$2;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v6, v6, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v6}, Lorg/telegram/messenger/ContactsController;->access$000(Lorg/telegram/messenger/ContactsController;)I

    move-result v6

    iget v7, p0, Lorg/telegram/messenger/ContactsController$6$2;->val$count:I

    if-ne v6, v7, :cond_59

    iget-object v6, p0, Lorg/telegram/messenger/ContactsController$6$2;->val$contactsMapToSave:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_59

    .line 841
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/ContactsController$6$2;->val$contactsMapToSave:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook(Ljava/util/HashMap;)V

    .line 849
    :cond_59
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v9, v9}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 850
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .local v1, "cArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_69
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->imported:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_88

    .line 852
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_contact;-><init>()V

    .line 853
    .local v2, "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->imported:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_importedContact;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_importedContact;->user_id:I

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    .line 854
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    add-int/lit8 v0, v0, 0x1

    goto :goto_69

    .line 856
    .end local v2    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    :cond_88
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController$6$2;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v6, v6, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-virtual {v6, v1, v7, v8}, Lorg/telegram/messenger/ContactsController;->processLoadedContacts(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 860
    .end local v0    # "a":I
    .end local v1    # "cArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .end local v3    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;
    :goto_92
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController$6$2;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v6, v6, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v6}, Lorg/telegram/messenger/ContactsController;->access$000(Lorg/telegram/messenger/ContactsController;)I

    move-result v6

    iget v7, p0, Lorg/telegram/messenger/ContactsController$6$2;->val$count:I

    if-ne v6, v7, :cond_a8

    .line 861
    sget-object v6, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v7, Lorg/telegram/messenger/ContactsController$6$2$1;

    invoke-direct {v7, p0}, Lorg/telegram/messenger/ContactsController$6$2$1;-><init>(Lorg/telegram/messenger/ContactsController$6$2;)V

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 878
    :cond_a8
    return-void

    .line 858
    :cond_a9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "import contacts error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_92
.end method

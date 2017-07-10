.class Lorg/telegram/messenger/ContactsController$9;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController;->updateUnregisteredContacts(Ljava/util/ArrayList;)V
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
        "Lorg/telegram/messenger/ContactsController$Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ContactsController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 1324
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$9;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1324
    check-cast p1, Lorg/telegram/messenger/ContactsController$Contact;

    check-cast p2, Lorg/telegram/messenger/ContactsController$Contact;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/ContactsController$9;->compare(Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/messenger/ContactsController$Contact;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/messenger/ContactsController$Contact;)I
    .registers 6
    .param p1, "contact"    # Lorg/telegram/messenger/ContactsController$Contact;
    .param p2, "contact2"    # Lorg/telegram/messenger/ContactsController$Contact;

    .prologue
    .line 1327
    iget-object v0, p1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 1328
    .local v0, "toComapre1":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 1329
    iget-object v0, p1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 1331
    :cond_a
    iget-object v1, p2, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 1332
    .local v1, "toComapre2":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_14

    .line 1333
    iget-object v1, p2, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 1335
    :cond_14
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

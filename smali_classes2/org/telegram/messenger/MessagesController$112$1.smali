.class Lorg/telegram/messenger/MessagesController$112$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$112;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$112;

.field final synthetic val$currentUser:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$112;Lorg/telegram/tgnet/TLRPC$User;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$112;

    .prologue
    .line 7636
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$112$1;->val$currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 7639
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$112$1;->val$currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/ContactsController;->addContactToPhoneBook(Lorg/telegram/tgnet/TLRPC$User;Z)J

    .line 7640
    return-void
.end method

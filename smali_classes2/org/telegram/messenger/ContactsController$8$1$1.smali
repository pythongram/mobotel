.class Lorg/telegram/messenger/ContactsController$8$1$1;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$8$1;->run()V
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
        "Lorg/telegram/tgnet/TLRPC$TL_contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/ContactsController$8$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$8$1;)V
    .registers 2
    .param p1, "this$2"    # Lorg/telegram/messenger/ContactsController$8$1;

    .prologue
    .line 1034
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$8$1$1;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1034
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contact;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/ContactsController$8$1$1;->compare(Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I
    .registers 5
    .param p1, "tl_contact"    # Lorg/telegram/tgnet/TLRPC$TL_contact;
    .param p2, "tl_contact2"    # Lorg/telegram/tgnet/TLRPC$TL_contact;

    .prologue
    .line 1037
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    iget v1, p2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    if-le v0, v1, :cond_8

    .line 1038
    const/4 v0, 0x1

    .line 1042
    :goto_7
    return v0

    .line 1039
    :cond_8
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    iget v1, p2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    if-ge v0, v1, :cond_10

    .line 1040
    const/4 v0, -0x1

    goto :goto_7

    .line 1042
    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

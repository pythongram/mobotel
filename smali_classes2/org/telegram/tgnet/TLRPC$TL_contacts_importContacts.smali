.class public Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_contacts_importContacts"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;",
            ">;"
        }
    .end annotation
.end field

.field public replace:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20784
    const v0, -0x25cf4cd3

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20783
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 20786
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->contacts:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 20790
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 20794
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20795
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20796
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 20797
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20798
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_15
    if-ge v0, v1, :cond_25

    .line 20799
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20798
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 20801
    :cond_25
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->replace:Z

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 20802
    return-void
.end method

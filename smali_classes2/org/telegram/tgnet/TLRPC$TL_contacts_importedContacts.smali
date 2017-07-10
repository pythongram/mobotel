.class public Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_contacts_importedContacts"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public imported:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_importedContact;",
            ">;"
        }
    .end annotation
.end field

.field public retry_contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11766
    const v0, -0x52adbceb

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11765
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 11768
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->imported:Ljava/util/ArrayList;

    .line 11769
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->retry_contacts:Ljava/util/ArrayList;

    .line 11770
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 11773
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->constructor:I

    if-eq v1, p1, :cond_1e

    .line 11774
    if-eqz p2, :cond_1c

    .line 11775
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in TL_contacts_importedContacts"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11777
    :cond_1c
    const/4 v0, 0x0

    .line 11782
    :goto_1d
    return-object v0

    .line 11780
    :cond_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;-><init>()V

    .line 11781
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_1d
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 14
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const v10, 0x1cb5c415

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 11786
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 11787
    .local v2, "magic":I
    if-eq v2, v10, :cond_21

    .line 11788
    if-eqz p2, :cond_32

    .line 11789
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "wrong Vector magic, got %x"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 11793
    :cond_21
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 11794
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_26
    if-ge v0, v1, :cond_3b

    .line 11795
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_importedContact;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_importedContact;

    move-result-object v3

    .line 11796
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$TL_importedContact;
    if-nez v3, :cond_33

    .line 11827
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_importedContact;
    :cond_32
    return-void

    .line 11799
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_importedContact;
    :cond_33
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->imported:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11794
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 11801
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_importedContact;
    :cond_3b
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 11802
    if-eq v2, v10, :cond_57

    .line 11803
    if-eqz p2, :cond_32

    .line 11804
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "wrong Vector magic, got %x"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 11808
    :cond_57
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 11809
    const/4 v0, 0x0

    :goto_5c
    if-ge v0, v1, :cond_6e

    .line 11810
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->retry_contacts:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11809
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 11812
    :cond_6e
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 11813
    if-eq v2, v10, :cond_8a

    .line 11814
    if-eqz p2, :cond_32

    .line 11815
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "wrong Vector magic, got %x"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 11819
    :cond_8a
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 11820
    const/4 v0, 0x0

    :goto_8f
    if-ge v0, v1, :cond_32

    .line 11821
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 11822
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :cond_32

    .line 11825
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11820
    add-int/lit8 v0, v0, 0x1

    goto :goto_8f
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 7
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    const v4, 0x1cb5c415

    .line 11830
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11831
    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11832
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->imported:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 11833
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11834
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_15
    if-ge v0, v1, :cond_25

    .line 11835
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->imported:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_importedContact;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_importedContact;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 11834
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 11837
    :cond_25
    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11838
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->retry_contacts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 11839
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11840
    const/4 v0, 0x0

    :goto_32
    if-ge v0, v1, :cond_46

    .line 11841
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->retry_contacts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 11840
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 11843
    :cond_46
    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11844
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 11845
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11846
    const/4 v0, 0x0

    :goto_53
    if-ge v0, v1, :cond_63

    .line 11847
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 11846
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 11849
    :cond_63
    return-void
.end method

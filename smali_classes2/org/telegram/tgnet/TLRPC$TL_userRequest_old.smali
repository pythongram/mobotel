.class public Lorg/telegram/tgnet/TLRPC$TL_userRequest_old;
.super Lorg/telegram/tgnet/TLRPC$TL_userRequest_old2;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_userRequest_old"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7369
    const v0, 0x22e8ceb0

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7368
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old2;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 7373
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old;->id:I

    .line 7374
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old;->first_name:Ljava/lang/String;

    .line 7375
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old;->last_name:Ljava/lang/String;

    .line 7376
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old;->access_hash:J

    .line 7377
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old;->phone:Ljava/lang/String;

    .line 7378
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 7379
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserStatus;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 7380
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 7383
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7384
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7385
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old;->first_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7386
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old;->last_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7387
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 7388
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7389
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 7390
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$UserStatus;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 7391
    return-void
.end method

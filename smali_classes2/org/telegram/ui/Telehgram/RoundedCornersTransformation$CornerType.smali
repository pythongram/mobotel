.class public final enum Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;
.super Ljava/lang/Enum;
.source "RoundedCornersTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CornerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

.field public static final enum ALL:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

.field public static final enum BOTTOM:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

.field public static final enum BOTTOM_LEFT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

.field public static final enum BOTTOM_RIGHT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

.field public static final enum DIAGONAL_FROM_TOP_LEFT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

.field public static final enum DIAGONAL_FROM_TOP_RIGHT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

.field public static final enum LEFT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

.field public static final enum OTHER_BOTTOM_LEFT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

.field public static final enum OTHER_BOTTOM_RIGHT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

.field public static final enum OTHER_TOP_LEFT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

.field public static final enum OTHER_TOP_RIGHT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

.field public static final enum RIGHT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

.field public static final enum TOP:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

.field public static final enum TOP_LEFT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

.field public static final enum TOP_RIGHT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 235
    new-instance v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->ALL:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    .line 236
    new-instance v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    const-string v1, "TOP_LEFT"

    invoke-direct {v0, v1, v4}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->TOP_LEFT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    new-instance v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    const-string v1, "TOP_RIGHT"

    invoke-direct {v0, v1, v5}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->TOP_RIGHT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    new-instance v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    const-string v1, "BOTTOM_LEFT"

    invoke-direct {v0, v1, v6}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->BOTTOM_LEFT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    new-instance v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    const-string v1, "BOTTOM_RIGHT"

    invoke-direct {v0, v1, v7}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->BOTTOM_RIGHT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    .line 237
    new-instance v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    const-string v1, "TOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->TOP:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    new-instance v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    const-string v1, "BOTTOM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->BOTTOM:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    new-instance v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    const-string v1, "LEFT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->LEFT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    new-instance v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    const-string v1, "RIGHT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->RIGHT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    .line 238
    new-instance v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    const-string v1, "OTHER_TOP_LEFT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->OTHER_TOP_LEFT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    new-instance v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    const-string v1, "OTHER_TOP_RIGHT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->OTHER_TOP_RIGHT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    new-instance v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    const-string v1, "OTHER_BOTTOM_LEFT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->OTHER_BOTTOM_LEFT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    new-instance v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    const-string v1, "OTHER_BOTTOM_RIGHT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->OTHER_BOTTOM_RIGHT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    .line 239
    new-instance v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    const-string v1, "DIAGONAL_FROM_TOP_LEFT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->DIAGONAL_FROM_TOP_LEFT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    new-instance v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    const-string v1, "DIAGONAL_FROM_TOP_RIGHT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->DIAGONAL_FROM_TOP_RIGHT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    .line 234
    const/16 v0, 0xf

    new-array v0, v0, [Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    sget-object v1, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->ALL:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->TOP_LEFT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->TOP_RIGHT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->BOTTOM_LEFT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->BOTTOM_RIGHT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->TOP:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->BOTTOM:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->LEFT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->RIGHT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->OTHER_TOP_LEFT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->OTHER_TOP_RIGHT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->OTHER_BOTTOM_LEFT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->OTHER_BOTTOM_RIGHT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->DIAGONAL_FROM_TOP_LEFT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->DIAGONAL_FROM_TOP_RIGHT:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->$VALUES:[Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 234
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 234
    const-class v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    return-object v0
.end method

.method public static values()[Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;
    .registers 1

    .prologue
    .line 234
    sget-object v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->$VALUES:[Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    invoke-virtual {v0}, [Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    return-object v0
.end method

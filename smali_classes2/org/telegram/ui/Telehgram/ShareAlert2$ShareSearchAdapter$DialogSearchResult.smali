.class Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;
.super Ljava/lang/Object;
.source "ShareAlert2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogSearchResult"
.end annotation


# instance fields
.field public date:I

.field public dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

.field public name:Ljava/lang/CharSequence;

.field public object:Lorg/telegram/tgnet/TLObject;

.field final synthetic this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;)V
    .registers 3

    .prologue
    .line 597
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;Lorg/telegram/ui/Telehgram/ShareAlert2$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;
    .param p2, "x1"    # Lorg/telegram/ui/Telehgram/ShareAlert2$1;

    .prologue
    .line 597
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;-><init>(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;)V

    return-void
.end method

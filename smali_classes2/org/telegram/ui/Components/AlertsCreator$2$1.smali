.class Lorg/telegram/ui/Components/AlertsCreator$2$1;
.super Ljava/lang/Object;
.source "AlertsCreator.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AlertsCreator$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AlertsCreator$2;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/AlertsCreator$2;

    .prologue
    .line 313
    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$2$1;->this$0:Lorg/telegram/ui/Components/AlertsCreator$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 3
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 317
    return-void
.end method

.class Lorg/telegram/ui/PhotoPickerActivity$10;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerActivity;->searchGiphyImages(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoPickerActivity;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$token:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoPickerActivity;ILjava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 784
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    iput p2, p0, Lorg/telegram/ui/PhotoPickerActivity$10;->val$token:I

    iput-object p3, p0, Lorg/telegram/ui/PhotoPickerActivity$10;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 4
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 787
    new-instance v0, Lorg/telegram/ui/PhotoPickerActivity$10$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PhotoPickerActivity$10$1;-><init>(Lorg/telegram/ui/PhotoPickerActivity$10;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 850
    return-void
.end method

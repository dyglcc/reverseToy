.class Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->displayFrameworkBugMessageAndExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity$2;->a:Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity$2;->a:Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;

    invoke-virtual {v0}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;->finish()V

    return-void
.end method

using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Obipoly.Startup))]
namespace Obipoly
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FalckNutecBachelor.Startup))]
namespace FalckNutecBachelor
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
